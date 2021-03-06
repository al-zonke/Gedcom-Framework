/*
 This file was autogenerated by tags.py 
 */

#import "GCCasteAttribute.h"

@implementation GCCasteAttribute {

}

// Methods:
/// @name Initializing

/** Initializes and returns a caste.

 
 @return A new caste.
*/
+(instancetype)caste
{
	return [[self alloc] init];
}
/// @name Initializing

/** Initializes and returns a caste.

 @param value The value as a GCValue object.
 @return A new caste.
*/
+(instancetype)casteWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/// @name Initializing

/** Initializes and returns a caste.

 @param value The value as an NSString.
 @return A new caste.
*/
+(instancetype)casteWithGedcomStringValue:(NSString *)value
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
