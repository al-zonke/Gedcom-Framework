/*
 This file was autogenerated by tags.py 
 */

#import "GCCallNumberAttribute.h"

@implementation GCCallNumberAttribute {
	GCMediaTypeAttribute *_mediaType;
}

// Methods:
/// @name Initializing

/** Initializes and returns a callNumber.

 
 @return A new callNumber.
*/
+(instancetype)callNumber
{
	return [[self alloc] init];
}
/// @name Initializing

/** Initializes and returns a callNumber.

 @param value The value as a GCValue object.
 @return A new callNumber.
*/
+(instancetype)callNumberWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/// @name Initializing

/** Initializes and returns a callNumber.

 @param value The value as an NSString.
 @return A new callNumber.
*/
+(instancetype)callNumberWithGedcomStringValue:(NSString *)value
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
@dynamic mediaType;

@end
