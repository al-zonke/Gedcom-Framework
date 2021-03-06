/*
 This file was autogenerated by tags.py 
 */

#import "GCSocialSecurityNumberAttribute.h"

@implementation GCSocialSecurityNumberAttribute {

}

// Methods:
/// @name Initializing

/** Initializes and returns a socialSecurityNumber.

 
 @return A new socialSecurityNumber.
*/
+(instancetype)socialSecurityNumber
{
	return [[self alloc] init];
}
/// @name Initializing

/** Initializes and returns a socialSecurityNumber.

 @param value The value as a GCValue object.
 @return A new socialSecurityNumber.
*/
+(instancetype)socialSecurityNumberWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/// @name Initializing

/** Initializes and returns a socialSecurityNumber.

 @param value The value as an NSString.
 @return A new socialSecurityNumber.
*/
+(instancetype)socialSecurityNumberWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (instancetype)init
{
	self = [super init];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end
