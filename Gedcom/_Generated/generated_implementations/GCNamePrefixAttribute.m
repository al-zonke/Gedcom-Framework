/*
 This file was autogenerated by tags.py 
 */

#import "GCNamePrefixAttribute.h"

#import "GCObject_internal.h"



@implementation GCNamePrefixAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCNamePrefixAttribute"];
}

// Methods:
/** Initializes and returns a namePrefix.

 
 @return A new namePrefix.
*/
+(GCNamePrefixAttribute *)namePrefix
{
	return [[self alloc] init];
}
/** Initializes and returns a namePrefix.

 @param value The value as a GCValue object.
 @return A new namePrefix.
*/
+(GCNamePrefixAttribute *)namePrefixWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a namePrefix.

 @param value The value as an NSString.
 @return A new namePrefix.
*/
+(GCNamePrefixAttribute *)namePrefixWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"namePrefix"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

