//
//  GCHelperTests.m
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 15/09/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "Gedcom.h"

#import "DateHelpers.h"
#import "CharacterSetHelpers.h"

#import "NSData+Base64.h"

@interface GCHelperTests : SenTestCase
@end


@implementation GCHelperTests

- (void)testDate:(NSString *)date time:(NSString *)time
{
    NSString *gedcomString = [NSString stringWithFormat:
                              @"1 DATE %@\n"
                              @"2 TIME %@",
                              date,
                              time
                              ];
    
    GCNode *changeNode = [[GCNode arrayOfNodesFromString:gedcomString] lastObject];
    
    //NSLog(@"changeNode: %@", changeNode);
    
    NSDate *changeDate = dateFromNode(changeNode);
    
    NSArray *timeParts = [time componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
    
    NSDate *expectedDate = [NSDate dateWithNaturalLanguageString:[NSString stringWithFormat:@"%@ %@ +0000", date, timeParts[0]]];
    
    if ([timeParts count] > 1) {
        NSTimeInterval milliseconds = [timeParts[1] intValue] * 0.001;
        
        expectedDate = [expectedDate dateByAddingTimeInterval:milliseconds];
    }
    
    STAssertEqualObjects(changeDate, expectedDate, nil);
    
    STAssertEqualObjects([changeNode gedcomString], [nodeFromDate(expectedDate) gedcomString], nil);
    
    //and the reverse:
    
    GCNode *newNode = nodeFromDate(changeDate);
    
    //NSLog(@"newNode: %@", newNode);
    
    STAssertEqualObjects([changeNode gedcomString], [newNode gedcomString], nil);
}

- (void)testDates
{
    // Test both summer & winter time, and single + two digit days/hours, as well as different kinds of fractions
    
    [self testDate:@"19 JUN 2000" time:@"12:34:56.789"];
    [self testDate:@"11 NOV 2004" time:@"23:30:14.012"];
    [self testDate:@"25 JAN 1999" time:@"01:52:23"];
}


- (void)testANSELDencoding
{
    const unsigned char copyrightAnsel[] = { 0xc3, 0x20, 0x31, 0x39, 0x39, 0x37 }; // "(c) 1997" in ANSEL
    
    NSData *copyrightData = [NSData dataWithBytes:copyrightAnsel length:6];
    
    NSString *copyrightString = stringFromANSELData(copyrightData);
    
    NSString *expected = [NSString stringWithFormat:@"%C 1997", (unichar)0x00a9];
    
    STAssertEqualObjects(copyrightString, expected, nil);
}

- (void)AtestBlobDecoding
{
    /*
     "PICT"-format image from BLOB in TGC55.ged
     Note: If decoded it should be an image of a flower
     */
    NSString *blob =
    @".HM.......k.1..F.jwA.Dzzzzw............A....1.........0U.66..E.8"
    @".......A..k.a6.A.......A..k.........../6....G.......0../..U....."
    @".w1/m........HC0..../...zzzzzzzz..5zzk..AnA..U..W6U....2rRrRrRrR"
    @".Dw...............k.1.......1..A...5ykE/zzzx/.g//.Hxzk6/.Tzy/.k1"
    @"/Dw/.Tvz.E5zzUE9/kHz.Tw2/DzzzEEA.kE2zk5yzk2/zzs21.U2/Dw/.Tw/.Tzy"
    @"/.fy/.HzzkHzzzo21Ds00.E2.UE2.U62/.k./Ds0.UE0/Do0..E8/UE2.U62.U9w"
    @"/.Tx/.20.jg2/jo2..9u/.0U.6A.zk";
    
    NSData *data = [NSData dataFromBase64String:blob];
    
    // TODO: not currently functional; test.pict cannot be viewed - problem with torture test or decoding? unable to find other examples...
    [data writeToFile:@"test.pict" atomically:YES];
}

@end
