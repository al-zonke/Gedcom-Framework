/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCAddressAttribute;
@class GCPhoneNumberAttribute;

/**
 
*/
@interface GCCorporationAttribute : GCAttribute

// Methods:
/** Initializes and returns a corporation.

 
 @return A new corporation.
*/
+(instancetype)corporation;
/** Initializes and returns a corporation.

 @param value The value as a GCValue object.
 @return A new corporation.
*/
+(instancetype)corporationWithValue:(GCValue *)value;
/** Initializes and returns a corporation.

 @param value The value as an NSString.
 @return A new corporation.
*/
+(instancetype)corporationWithGedcomStringValue:(NSString *)value;

// Properties:
/// . 
@property (nonatomic) GCAddressAttribute *address;

/// . GCPhoneNumberAttribute
@property (nonatomic) NSArray *phoneNumbers;
/// . Contains instances of phoneNumbers
@property (nonatomic) NSMutableArray *mutablePhoneNumbers;


@end

