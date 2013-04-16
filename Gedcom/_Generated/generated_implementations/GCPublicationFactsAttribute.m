/*
 This file was autogenerated by tags.py 
 */

#import "GCPublicationFactsAttribute.h"

#import "GCObject_internal.h"



@implementation GCPublicationFactsAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCPublicationFactsAttribute"];
}

// Methods:
/** Initializes and returns a publicationFacts.

 
 @return A new publicationFacts.
*/
+(GCPublicationFactsAttribute *)publicationFacts
{
	return [[self alloc] init];
}
/** Initializes and returns a publicationFacts.

 @param value The value as a GCValue object.
 @return A new publicationFacts.
*/
+(GCPublicationFactsAttribute *)publicationFactsWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a publicationFacts.

 @param value The value as an NSString.
 @return A new publicationFacts.
*/
+(GCPublicationFactsAttribute *)publicationFactsWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"publicationFacts"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

