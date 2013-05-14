//
//  GCObject+GCSwizzlingAdditions.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 23/04/13.
//  Copyright (c) 2013 Mikkel Eide Eriksen. All rights reserved.
//

#import "GCObject+GCSwizzlingAdditions.h"
#import "GCObject_internal.h"

#import "GCTagAccessAdditions.h"

#import <objc/runtime.h>

static inline char* ivarNameFromPropName(const char *propName) {
    size_t propLen = strlen(propName)+1;
    
    char *ivarName = calloc(propLen+1, sizeof(char));
    
    strncpy(ivarName+1, propName, propLen);
    ivarName[0] = '_';
    
    //NSLog(@"propName: %s", propName);
    //NSLog(@"ivarName: %s", ivarName);
    
    return ivarName;
}


// Ascend class hierarchy and find the highest class that claims the property
static inline BOOL classHasProperty(Class *cls, NSString *propString, BOOL isMultiple) {
    //NSLog(@"Looking for %@ on %@", propString, *cls);
    
    Class c = *cls;
    Class best = c;
    BOOL didFind = NO;
    
    do {
        if ([c gedTag] && [[c validPropertyTypes] containsObject:propString]) {
            if (isMultiple && [c allowsMultipleOccurrencesOfPropertyType:propString]) {
                didFind = YES;
                best = c;
            } else if (!isMultiple && ![c allowsMultipleOccurrencesOfPropertyType:propString]) {
                didFind = YES;
                best = c;
            }
        }
        c = class_getSuperclass(c);
    } while (c != [GCObject class]);
    
    if (didFind) {
        *cls = best;
        //NSLog(@"=> %@", *cls);
    }
    
    return didFind;
}

@implementation GCObject (GCSwizzlingAdditions)

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    @synchronized (self) {
        Class cls;
        
        NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
        
        NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
                                                                  value:@"Undo %@"
                                                                  table:@"Misc"];
        
        const char *selName = sel_getName(sel);
        const size_t atIndexLen = strlen("atIndex:");
        
        char *prefix = NULL;
        size_t prefixLen;
        
        BOOL shouldResolve = NO;
        BOOL didResolve = NO;
        
        if (strncmp(prefix = "insertObject:in", selName, prefixLen = strlen(prefix)) == 0) {
            
            // indexed object insert
            
            size_t size = strlen(selName) - prefixLen;
            
            char *propName = calloc(size+1, sizeof(char)); // add room for '\0'
            strncpy(propName, selName+prefixLen, size);
            propName[0] += 32; // lowercase first char
            
            for (size_t i = 0; i <= atIndexLen ; i++) {
                propName[size-i] = '\0'; // nil out remains
            }
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, YES)) {
                shouldResolve = YES;
                
                NSString *reverseSelName = [NSString stringWithFormat:@"removeObjectFrom%@%@AtIndex:", [[propString substringToIndex:1] uppercaseString], [propString substringFromIndex:1]];
                SEL reverseSel = NSSelectorFromString(reverseSelName);
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^(GCObject *_s, id newObj, NSUInteger index) {
                    NSMutableArray *_ivar = object_getIvar(_s, ivar);
                    
                    if ([newObj valueForKey:@"describedObject"] == _s) {
                        return;
                    }
                    
                    if (!_s->_isBuildingFromGedcom) {
                        NSUndoManager *uM = [_s valueForKey:@"undoManager"];
                        @synchronized (uM) {
                            [uM beginUndoGrouping];
                            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[_s methodSignatureForSelector:reverseSel]];
                            [invocation setSelector:reverseSel];
                            [invocation setTarget:[uM prepareWithInvocationTarget:_s]];
                            [invocation setArgument:&index atIndex:2];
                            [invocation invoke];
                            [uM setActionName:[NSString stringWithFormat:formatString, [_s valueForKey:@"localizedType"]]];
                            [uM endUndoGrouping];
                        }
                    }
                    
                    if ([newObj valueForKey:@"describedObject"]) {
                        [[newObj valueForKeyPath:@"describedObject.mutableProperties"] removeObject:newObj];
                    }
                    
                    [newObj setValue:_s forKey:@"describedObject"];
                    
                    [_ivar insertObject:newObj atIndex:index];
                });
                
                free(ivarName);

                didResolve = class_addMethod(cls, sel, imp, "v@:@I");
            }
            
            free(propName);
            
            //} else if (strncmp(prefix = "insert", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
        } else if (strncmp(prefix = "removeObjectFrom", selName, prefixLen = strlen(prefix)) == 0) {
            
            // indexed object remove
            
            size_t size = strlen(selName) - prefixLen;
            
            char *propName = calloc(size+1, sizeof(char)); // add room for '\0'
            strncpy(propName, selName+prefixLen, size);
            propName[0] += 32; // lowercase first char
            
            for (size_t i = 0; i <= atIndexLen ; i++) {
                propName[size-i] = '\0'; // nil out remains
            }
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, YES)) {
                shouldResolve = YES;
                
                NSString *reverseSelName = [NSString stringWithFormat:@"insertObject:in%@%@AtIndex:", [[propString substringToIndex:1] uppercaseString], [propString substringFromIndex:1]];
                SEL reverseSel = NSSelectorFromString(reverseSelName);
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^(GCObject *_s, NSUInteger index) {
                    NSMutableArray *_ivar = object_getIvar(_s, ivar);
                    
                    if (!_s->_isBuildingFromGedcom) {
                        NSUndoManager *uM = [_s valueForKey:@"undoManager"];
                        @synchronized (uM) {
                            [uM beginUndoGrouping];
                            id obj = _ivar[index];
                            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[_s methodSignatureForSelector:reverseSel]];
                            [invocation setSelector:reverseSel];
                            [invocation setTarget:[uM prepareWithInvocationTarget:_s]];
                            [invocation setArgument:&obj atIndex:2];
                            [invocation setArgument:&index atIndex:3];
                            [invocation invoke];
                            [uM setActionName:[NSString stringWithFormat:formatString, [_s valueForKey:@"localizedType"]]];
                            [uM endUndoGrouping];
                        }
                    }
                    
                    [_ivar[index] setValue:nil forKey:@"describedObject"];
                    
                    [_ivar removeObjectAtIndex:index];
                });
                
                free(ivarName);
                
                didResolve = class_addMethod(cls, sel, imp, "v@:I");
            }
            
            free(propName);
            
            //} else if (strncmp(prefix = "remove", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
        } else if (strncmp(prefix = "objectIn", selName, prefixLen = strlen(prefix)) == 0) {
            
            // indexed object get
            
            size_t size = strlen(selName) - prefixLen;
            
            char *propName = calloc(size+1, sizeof(char)); // add room for '\0'
            strncpy(propName, selName+prefixLen, size);
            propName[0] += 32; // lowercase first char
            
            for (size_t i = 0; i <= atIndexLen ; i++) {
                propName[size-i] = '\0'; // nil out remains
            }
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, YES)) {
                shouldResolve = YES;
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^id(GCObject *_s, NSUInteger index) {
                    return [object_getIvar(_s, ivar) objectAtIndex:index];
                });
                
                free(ivarName);
                
                didResolve = class_addMethod(cls, sel, imp, "@@:I");
            }
            
            free(propName);
            
            //} else if (strncmp(prefix = "object", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
        } else if (strncmp(prefix = "countOf", selName, prefixLen = strlen(prefix)) == 0) {
            
            // indexed count
            
            size_t size = strlen(selName) - prefixLen;
            
            char *propName = calloc(size+1, sizeof(char)); // add room for '\0'
            strncpy(propName, selName+prefixLen, size);
            propName[0] += 32; // lowercase first char
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, YES)) {
                shouldResolve = YES;
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^NSUInteger(GCObject *_s) {
                    return [object_getIvar(_s, ivar) count];
                });
                
                free(ivarName);
                
                didResolve = class_addMethod(cls, sel, imp, "I@:");
            }
            
            free(propName);
            
        } else if (strncmp(prefix = "set", selName, prefixLen = strlen(prefix)) == 0) {
            
            // setter
            
            size_t size = strlen(selName) - prefixLen - 1; // remove prefix and ':'
            
            char *propName = calloc(size+1, sizeof(char)); // add room for '\0'
            strncpy(propName, selName+prefixLen, size);
            propName[0] += 32; // lowercase first char
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, NO)) {
                shouldResolve = YES;
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^(GCObject *_s, id newObj) {
                    id _ivar = object_getIvar(_s, ivar);
                    
                    if (!_s->_isBuildingFromGedcom) {
                        NSUndoManager *uM = [_s valueForKey:@"undoManager"];
                        @synchronized (uM) {
                            [uM beginUndoGrouping];
                            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[_s methodSignatureForSelector:sel]];
                            [invocation setSelector:sel];
                            [invocation setTarget:[uM prepareWithInvocationTarget:_s]];
                            [invocation setArgument:&_ivar atIndex:2];
                            [invocation invoke];
                            [uM setActionName:[NSString stringWithFormat:formatString, [_s valueForKey:@"localizedType"]]];
                            [uM endUndoGrouping];
                        }
                    }
                    
                    if (_ivar) {
                        [_ivar setValue:nil forKey:@"describedObject"];
                    }
                    
                    [[newObj valueForKeyPath:@"describedObject.mutableProperties"] removeObject:newObj];
                    
                    [newObj setValue:_s forKey:@"describedObject"];
                    
                    NSParameterAssert(!newObj || [newObj valueForKey:@"describedObject"] == _s);
                    
                    object_setIvar(_s, ivar, newObj);
                });
                
                free(ivarName);
                
                didResolve = class_addMethod(cls, sel, imp, "v@:@");
            }
            
            free(propName);
        
            //} else if (strncmp(prefix = "_set", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
            //} else if (strncmp(prefix = "get", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
            //} else if (strncmp(prefix = "replace", selName, prefixLen = strlen(prefix)) == 0) {
            
            // do nothing
            
        } else {
            
            // getter
            
            prefix = "";
            prefixLen = 0;
            
            size_t size = strlen(selName) - prefixLen;
            
            char *propName = calloc(size, sizeof(char));
            strncpy(propName, selName+prefixLen, size);
            
            NSString *propString = [NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
            cls = [self class];
            
            if (classHasProperty(&cls, propString, NO)) {
                shouldResolve = YES;
                
                char *ivarName = ivarNameFromPropName(propName);
                
                Ivar ivar = class_getInstanceVariable(self, ivarName);
                
                IMP imp = imp_implementationWithBlock(^id(GCObject *_s) {
                    return object_getIvar(_s, ivar);
                });
                
                free(ivarName);
                
                didResolve = class_addMethod(cls, sel, imp, "@@:");
            }
            
            free(propName);
        }
        
        if (didResolve) {
            //NSLog(@"%@ -> added %s", [self className], selName);
            
            return YES;
        } else {
            NSParameterAssert(!shouldResolve); // Something went wrong...
            return [super resolveInstanceMethod:sel];
        }
    }
}

@end
