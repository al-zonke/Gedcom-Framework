/*
 This file was autogenerated by tags.py 
 */

#import "GCHeaderSourceAttribute.h"

@implementation GCHeaderSourceAttribute {
	GCVersionAttribute *_version;
	GCDescriptiveNameAttribute *_descriptiveName;
	GCCorporationAttribute *_corporation;
	GCHeaderSourceDataAttribute *_headerSourceData;
}

// Methods:
/// @name Initializing

/** Initializes and returns a headerSource.

 
 @return A new headerSource.
*/
+(instancetype)headerSource
{
	return [[self alloc] init];
}
/// @name Initializing

/** Initializes and returns a headerSource.

 @param value The value as a GCValue object.
 @return A new headerSource.
*/
+(instancetype)headerSourceWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/// @name Initializing

/** Initializes and returns a headerSource.

 @param value The value as an NSString.
 @return A new headerSource.
*/
+(instancetype)headerSourceWithGedcomStringValue:(NSString *)value
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
@dynamic version;
@dynamic descriptiveName;
@dynamic corporation;
@dynamic headerSourceData;

@end
