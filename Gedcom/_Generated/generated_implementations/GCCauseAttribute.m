/*
 This file was autogenerated by tags.py 
 */

#import "GCCauseAttribute.h"

#import "GCObject_internal.h"



@implementation GCCauseAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCCauseAttribute"];
}

// Methods:
/** Initializes and returns a cause.

 
 @return A new cause.
*/
+(GCCauseAttribute *)cause
{
	return [[self alloc] init];
}
/** Initializes and returns a cause.

 @param value The value as a GCValue object.
 @return A new cause.
*/
+(GCCauseAttribute *)causeWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a cause.

 @param value The value as an NSString.
 @return A new cause.
*/
+(GCCauseAttribute *)causeWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"cause"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

