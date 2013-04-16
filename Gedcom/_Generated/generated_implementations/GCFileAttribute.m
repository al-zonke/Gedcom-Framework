/*
 This file was autogenerated by tags.py 
 */

#import "GCFileAttribute.h"

#import "GCObject_internal.h"



@implementation GCFileAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCFileAttribute"];
}

// Methods:
/** Initializes and returns a file.

 
 @return A new file.
*/
+(GCFileAttribute *)file
{
	return [[self alloc] init];
}
/** Initializes and returns a file.

 @param value The value as a GCValue object.
 @return A new file.
*/
+(GCFileAttribute *)fileWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a file.

 @param value The value as an NSString.
 @return A new file.
*/
+(GCFileAttribute *)fileWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"file"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

