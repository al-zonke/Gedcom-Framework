//
//  GCRecord.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 21/04/13.
//  Copyright (c) 2013 Mikkel Eide Eriksen. All rights reserved.
//

#import "GCRecord.h"

#import "GCValue.h"
#import "GCChangeInfoAttribute.h"

#import "GCContext_internal.h"

#import "GCObject_internal.h"
#import "GCTagAccessAdditions.h"

@interface GCRecord ()

@property (nonatomic) NSDate *modificationDate;
@property GCChangeInfoAttribute *changeInfo;

@end

@implementation GCRecord

#pragma mark Comparison

- (NSComparisonResult)compare:(GCEntity *)other
{
    NSComparisonResult result = [super compare:other];
    
    if (result != NSOrderedSame) {
        return result;
    }
    
    if (self.type != other.type) {
        return [self.type compare:other.type];
    }
    
    return NSOrderedSame;
}

#pragma mark Description

//COV_NF_START
- (NSString *)descriptionWithIndent:(NSUInteger)level
{
    NSString *indent = @"";
    for (NSUInteger i = 0; i < level; i++) {
        indent = [NSString stringWithFormat:@"%@%@", indent, @"  "];
    }
    
    NSString *extraValues = [NSString stringWithFormat:@"xref: %@", self.xref];;
    
    if (self.takesValue) {
        extraValues = [NSString stringWithFormat:@"%@ value: %@", extraValues, self.value];
    }
    
    return [NSString stringWithFormat:@"%@<%@: %p> (%@) {\n%@%@};\n", indent, [self className], self, extraValues, [self _propertyDescriptionWithIndent:level+1], indent];
}
//COV_NF_END

#pragma mark Objective-C properties

- (NSString *)xref
{
    return [self.context _xrefForRecord:self];
}

- (NSURL *)URL
{
    return [[NSURL alloc] initWithString:[NSString stringWithFormat:
                                          @"%@://%@/%@",
                                          @"xref",
                                          self.context.name,
                                          self.xref
                                          ]];
}

@dynamic changeInfo;

- (NSDate *)modificationDate
{
    return self.changeInfo.modificationDate;
}

- (void)setModificationDate:(NSDate *)modificationDate
{
    if (!modificationDate) {
        if (!self.changeInfo.notes) {
            self.changeInfo = nil;
        }
    } else {
        if (!self.changeInfo) {
            self.changeInfo = [[GCChangeInfoAttribute alloc] init];
        }
    }
    
    [self.changeInfo setValue:modificationDate forKey:@"modificationDate"];
}

- (void)didChangeValueForKey:(NSString *)key
{
    if (!self.isBuildingFromGedcom && [self.validPropertyTypes containsObject:@"changeInfo"]) {
        self.modificationDate = [NSDate date];
    }
    
    [super didChangeValueForKey:key];
}

- (void)didChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key
{
    if (!self.isBuildingFromGedcom && [self.validPropertyTypes containsObject:@"changeInfo"]) {
        self.modificationDate = [NSDate date];
    }
    
    [super didChange:changeKind valuesAtIndexes:indexes forKey:key];
}

@end
