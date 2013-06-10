/*
 This file was autogenerated by tags.py 
 */

#import "GCIndividualLDSOrdinanceAttribute.h"

@class GCLDSBaptismStatusAttribute;

/**
 
*/
@interface GCLDSConfirmationAttribute : GCIndividualLDSOrdinanceAttribute

// Methods:
/// @name Initializing

/** Initializes and returns a lDSConfirmation.

 
 @return A new lDSConfirmation.
*/
+(instancetype)lDSConfirmation;
/// @name Initializing

/** Initializes and returns a lDSConfirmation.

 @param value The value as a GCValue object.
 @return A new lDSConfirmation.
*/
+(instancetype)lDSConfirmationWithValue:(GCValue *)value;
/// @name Initializing

/** Initializes and returns a lDSConfirmation.

 @param value The value as an NSString.
 @return A new lDSConfirmation.
*/
+(instancetype)lDSConfirmationWithGedcomStringValue:(NSString *)value;

// Properties:
/// . 
@property (nonatomic, strong) GCLDSBaptismStatusAttribute *lDSBaptismStatus;


@end
