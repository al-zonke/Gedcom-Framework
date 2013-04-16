/*
 This file was autogenerated by tags.py 
 */

#import "GCAbbreviationAttribute.h"

#import "GCObject_internal.h"



@implementation GCAbbreviationAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCAbbreviationAttribute"];
}

// Methods:
/** Initializes and returns a abbreviation.

 
 @return A new abbreviation.
*/
+(GCAbbreviationAttribute *)abbreviation
{
	return [[self alloc] init];
}
/** Initializes and returns a abbreviation.

 @param value The value as a GCValue object.
 @return A new abbreviation.
*/
+(GCAbbreviationAttribute *)abbreviationWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a abbreviation.

 @param value The value as an NSString.
 @return A new abbreviation.
*/
+(GCAbbreviationAttribute *)abbreviationWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"abbreviation"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

