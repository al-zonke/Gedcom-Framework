/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCDateAttribute;
@class GCTextAttribute;

/**
 
*/
@interface GCDataAttribute : GCAttribute

// Methods:
/// @name Initializing

/** Initializes and returns a data.

 
 @return A new data.
*/
+(instancetype)data;
/// @name Initializing

/** Initializes and returns a data.

 @param value The value as a GCValue object.
 @return A new data.
*/
+(instancetype)dataWithValue:(GCValue *)value;
/// @name Initializing

/** Initializes and returns a data.

 @param value The value as an NSString.
 @return A new data.
*/
+(instancetype)dataWithGedcomStringValue:(NSString *)value;

// Properties:
/// . 
@property (nonatomic, strong) GCDateAttribute *date;

/// . GCTextAttribute
@property (nonatomic, strong) NSArray *texts;
/// . Contains instances of texts
@property (nonatomic, strong) NSMutableArray *mutableTexts;


@end
