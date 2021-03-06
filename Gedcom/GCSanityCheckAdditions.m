//
//  GCSanityCheckAdditions.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 11/10/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "GCSanityCheckAdditions.h"
#import "GCContext+GCKeyValueAdditions.h"
#import "GCTagAccessAdditions.h"

#import "GCRecord.h"
#import "GCIndividualRecord.h"
#import "GedcomErrors.h"
#import "Gedcom_internal.h"

#import "GCValue.h"

@implementation GCContext (GCSanityCheckAdditions)

- (BOOL)sanityCheck:(NSError **)outError
{
	__block BOOL isSane = YES;
    __block NSError *returnError = nil;
    
    for (GCEntity *entity in self.entities) {
        NSError *error;
        if (![entity sanityCheck:&error]) {
            isSane &= NO;
            returnError = combineErrors(returnError, error);
        }
    }
	
    if (!isSane) {
        *outError = returnError;
    }
    
    return isSane;
}

@end

@implementation GCEntity (GCSanityCheckAdditions)

- (BOOL)sanityCheck:(NSError **)outError
{
    return YES; // default
}

@end

@implementation GCIndividualRecord (GCSanityCheckAdditions)

- (BOOL)sanityCheck:(NSError **)outError
{
	__block BOOL isSane = YES;
    __block NSError *returnError = nil;
	
	NSString *jsonPath = [[NSBundle bundleForClass:[self class]] pathForResource:@"sanity"
                                                                          ofType:@"json"];
	NSData *jsonData = [[NSFileManager defaultManager] contentsAtPath:jsonPath];
	
    NSError *err = nil;
    
    NSDictionary *sanity = [NSJSONSerialization JSONObjectWithData:jsonData
                                                           options:kNilOptions
                                                             error:&err];
    
    NSAssert(sanity != nil, @"error: %@", err);
    
	id settings = sanity[self.type];
    
	[settings[@"orderRequirements"] enumerateKeysAndObjectsUsingBlock:^(id key, NSArray *eventsThatMustOccurLater, BOOL *stop){
		NSString *keyPath = [NSString stringWithFormat:@"%@s.date.value", key];
		for (GCDate *eventDate in [self valueForKeyPath:keyPath]) {
            if ([eventDate isKindOfClass:[NSNull class]]) {
                continue;
            }
			for (id eventType in eventsThatMustOccurLater) {
				NSString *otherKeyPath = [NSString stringWithFormat:@"%@s.date.value", eventType];
				for (GCDate *otherEventDate in [self valueForKeyPath:otherKeyPath]) {
                    //NSLog(@"comparing %@ : %@ :: %@ : %@", key, eventType, eventDate, otherEventDate);
					if ([otherEventDate isLessThan:eventDate]) {
						isSane &= NO;
                        
                        NSString *formatString = GCLocalizedString(@"%@ usually occurs before %@", @"Errors");
                        
                        NSDictionary *userInfo = @{
                                                   NSLocalizedDescriptionKey: [NSString stringWithFormat:formatString, key, eventType],
                                                   NSAffectedObjectsErrorKey: self
                                                   };

                        returnError = combineErrors(returnError, [NSError errorWithDomain:GCErrorDomain
                                                                                     code:GCSanityCheckInconsistency
                                                                                 userInfo:userInfo]);
					}
				}
			}
		}
	}];
	
	[settings[@"ageRequirements"] enumerateKeysAndObjectsUsingBlock:^(id key, NSString *requiredAgeString, BOOL *stop){
        GCAge *requiredAge = [GCAge valueWithGedcomString:requiredAgeString];
		NSString *keyPath = [NSString stringWithFormat:@"%@s.age.value", key];
		for (GCAge *ageAtEvent in [self valueForKeyPath:keyPath]) {
            if ([ageAtEvent isKindOfClass:[NSNull class]]) {
                continue;
            }
			if ([ageAtEvent isLessThan:requiredAge]) {
				isSane &= NO;
                
                NSString *formatString = GCLocalizedString(@"%@ is young for %@", @"Errors");
                
                NSDictionary *userInfo = @{
                                           NSLocalizedDescriptionKey: [NSString stringWithFormat:formatString, ageAtEvent, key],
                                           NSAffectedObjectsErrorKey: self
                                           };
                
                returnError = combineErrors(returnError, [NSError errorWithDomain:GCErrorDomain
                                                                             code:GCSanityCheckInconsistency
                                                                         userInfo:userInfo]);
			}
		}
	}];
	
    if (!isSane) {
        *outError = returnError;
    }
    
	return isSane;
}

@end
