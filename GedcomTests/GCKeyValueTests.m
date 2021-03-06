//
//  GCDateTests.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 16/02/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "Gedcom.h"

@interface GCTestObserver : NSObject

- (NSArray *)observations;

@property GCEntity *entity;

@end

@implementation GCTestObserver {
    GCEntity *_entity;
    NSMutableArray *_observations;
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _observations = [NSMutableArray arrayWithCapacity:1];
    }
    
    return self;
}

- (GCEntity *)entity
{
    return _entity;
}

- (void)setEntity:(GCEntity *)entity
{
    [self willChangeValueForKey:@"entity"];
    _entity = entity;
    for (NSString *key in [_entity validPropertyTypes]) {
        //NSLog(@"Observing: %@", key);
        [_entity addObserver:self forKeyPath:key options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
    }
    [self didChangeValueForKey:@"entity"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    //NSLog(@"Observed:\n\tkeypath: %@\n\tobject:%@\n\tchange:%@\n\tcontext: %@", keyPath, object, change, context);
    
    if ([keyPath isEqualToString:@"changeInfo"]) {
        return;
    }
    
    id old = [NSNull null];
    if ([change valueForKey:NSKeyValueChangeOldKey]) {
        if (![[change valueForKey:NSKeyValueChangeOldKey] isKindOfClass:[NSNull class]]) {
            id tmp = [change valueForKey:NSKeyValueChangeOldKey];
            if ([tmp isKindOfClass:[NSArray class]]) {
                tmp = [tmp lastObject];
            }
            old = [tmp gedcomString];
        }
        if (!old) old = [NSNull null];
    }
    
    id new = [NSNull null];
    if ([change valueForKey:NSKeyValueChangeNewKey]) {
        if (![[change valueForKey:NSKeyValueChangeNewKey] isKindOfClass:[NSNull class]]) { 
            id tmp = [change valueForKey:NSKeyValueChangeNewKey];
            if ([tmp isKindOfClass:[NSArray class]]) {
                tmp = [tmp lastObject];
            }
            new = [tmp gedcomString];
        }
        if (!new) new = [NSNull null];
    }
    
    if ([[change valueForKey:NSKeyValueChangeKindKey] intValue] == 1 && [old isEqualTo:new]) {
        return;
    }
    
    NSArray *observation = @[keyPath,
                            [change valueForKey:NSKeyValueChangeKindKey], 
                            old, 
                            new
                            ];
    NSString *observationString = [observation componentsJoinedByString:@" : "];
    [_observations addObject:observationString];
}

- (NSArray *)observations
{
    return [_observations copy];
}

- (void)dealloc
{
    for (NSString *key in [_entity validPropertyTypes]) {
        //NSLog(@"Deobserving: %@", key);
        [_entity removeObserver:self forKeyPath:key];
    }
}

@end

@interface GCKeyValueTests : SenTestCase
@end

@implementation GCKeyValueTests

-(void)testValueForKey
{
	GCNode *aNode = [GCNode nodeWithTag:@"NAME" value:@"Jens /Hansen/"];
	
	GCNode *bNode = [[GCNode alloc] initWithTag:@"INDI" 
										  value:nil 
										   xref:@"@I1@" 
									   subNodes:[NSArray arrayWithObject:aNode]];
	
	STAssertEqualObjects(aNode, [bNode valueForKey:@"NAME"][0], nil);
}

- (void)testKVC1
{
	GCContext *ctx = [GCContext context];
	
    GCIndividualRecord *indi = [GCIndividualRecord individualInContext:ctx];
    
    [indi.mutableProperties addObject:[GCPersonalNameAttribute personalNameWithValue:[GCNamestring valueWithGedcomString:@"Jens /Hansen/"]]];
    
    NSDate *knownDate = [NSDate dateWithNaturalLanguageString:@"Jan 1, 2000 12:00:00 +0000"];
    [indi setValue:knownDate forKey:@"modificationDate"];
    
    STAssertEqualObjects(indi.gedcomString,
                         @"0 @INDI1@ INDI\n"
                         @"1 NAME Jens /Hansen/\n"
                         @"1 CHAN\n"
                         @"2 DATE 1 JAN 2000\n"
                         @"3 TIME 12:00:00"
                         , nil);
    
}

- (void)testKVC2
{
	GCContext *ctx = [GCContext context];
	
    GCIndividualRecord *indi = [GCIndividualRecord individualInContext:ctx];
    
    GCProperty *name1 = [GCPersonalNameAttribute personalNameWithValue:[GCNamestring valueWithGedcomString:@"Jens /Hansen/"]];
    GCProperty *name2 = [GCPersonalNameAttribute personalNameWithValue:[GCNamestring valueWithGedcomString:@"Jens /Jensen/"]];
    
    GCProperty *nickname = [GCNicknameAttribute nicknameWithValue:[GCString valueWithGedcomString:@"Store Jens"]];
    
    [name1.mutableProperties addObject:nickname];
    
    STAssertEqualObjects([nickname describedObject], name1, nil);
    STAssertTrue([name1.properties containsObject:nickname], nil);
    STAssertFalse([name2.properties containsObject:nickname], nil);
    
    [name2.mutableProperties addObject:nickname];
    
    STAssertEqualObjects([nickname describedObject], name2, nil);
    STAssertTrue([name2.properties containsObject:nickname], nil);
    STAssertFalse([name1.properties containsObject:nickname], nil);
    
    [indi.mutableProperties addObject:name1];
    [indi.mutableProperties addObject:name2];
    //[indi setValue:[NSArray arrayWithObjects:name1, name2, nil] forKey:@"personalNames"];
    
    NSArray *expectedObjects = @[ [NSNull null], nickname ];
    STAssertEqualObjects([indi valueForKeyPath:@"personalNames.nickname"], expectedObjects, nil);
}

-(void)testKVO
{
    GCTestObserver *observer = [[GCTestObserver alloc] init];
    
	GCContext *ctx = [GCContext context];
	
    GCIndividualRecord *indi = [GCIndividualRecord individualInContext:ctx];
    
    observer.entity = indi;
    
    indi.sex = [GCSexAttribute sexWithValue:[GCGender maleGender]];
    
    [indi.mutablePersonalNames addObject:[GCPersonalNameAttribute personalNameWithGedcomStringValue:@"Jens /Hansen/"]];
    [indi.mutablePersonalNames addObject:[GCPersonalNameAttribute personalNameWithGedcomStringValue:@"Jens /Hansen/ Smed"]];
    
    //TODO should this fire something too?
    [[indi.personalNames objectAtIndex:1] setValue:[GCNicknameAttribute nicknameWithGedcomStringValue:@"Store Jens"] forKey:@"nickname"];
    
    [indi.mutablePersonalNames removeObjectAtIndex:0];
    
    NSArray *expectedObservations = [NSArray arrayWithObjects:
                                     // propertyType : NSKeyValueChange : old : new
                                     @"sex : 1 : <null> : 0 SEX M", // set sex
                                     @"personalNames : 2 : <null> : 0 NAME Jens /Hansen/", // insert name
                                     @"personalNames : 2 : <null> : 0 NAME Jens /Hansen/ Smed", // insert name
                                     @"personalNames : 3 : 0 NAME Jens /Hansen/ : <null>", // remove name
                                     nil];
    STAssertEqualObjects([observer observations], 
                         expectedObservations,
                         nil);
}

- (void)testSetGedcomString
{
    //TODO better test:
    
    GCTestObserver *observer = [[GCTestObserver alloc] init];

	GCContext *ctx = [GCContext context];
	
    GCIndividualRecord *indi = [GCIndividualRecord individualInContext:ctx];
    
    indi.gedcomString =
     @"0 @INDI1@ INDI\n"
     @"1 NAME Jens /Hansen/\n"
     @"1 NAME Jens /Hansen/ Smed\n"
     @"1 BIRT\n"
     @"2 DATE 1 JAN 1901\n"
     @"1 DEAT Y";
    
    observer.entity = indi;
    
    indi.gedcomString =
     @"0 @INDI1@ INDI\n"
     @"1 NAME Jens /Hansen/\n"
     @"1 NAME Jens /Hansen/ Smed\n"
     @"1 DEAT\n"
     @"2 DATE 1 JAN 1930";
    
    NSArray *expectedObservations = [NSArray arrayWithObjects:
                                     // propertyType : NSKeyValueChange : old : new
                                     @"births : 3 : 0 BIRT\n1 DATE 1 JAN 1901 : <null>", // remove birth
                                     @"deaths : 3 : 0 DEAT Y : <null>", // remove death
                                     @"deaths : 2 : <null> : 0 DEAT", // insert new death
                                     nil];
    STAssertEqualObjects([observer observations], 
                         expectedObservations,
                         nil);
}

@end
