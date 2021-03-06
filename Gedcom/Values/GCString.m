//
//  GCString.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 30/04/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "GCValue.h"

@implementation GCString {
    NSString *_contents;
}

- (instancetype)initWithGedcomString:(NSString *)gedcomString
{
    self = [super init];
    
    if (self) {
        _contents = gedcomString;
    }
    
    return self;
}

+ (instancetype)valueWithGedcomString:(NSString *)gedcomString
{
    return [[self alloc] initWithGedcomString:gedcomString];
}

- (NSComparisonResult)compare:(GCString *)other
{
    return [self.gedcomString compare:other.gedcomString];
}

- (NSString *)gedcomString
{
    return _contents;
}

- (NSString *)displayString
{
    return _contents;
}

@end
