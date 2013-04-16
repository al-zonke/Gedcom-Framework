/*
 This file was autogenerated by tags.py 
 */

#import "GCRestrictionNoticeAttribute.h"

#import "GCObject_internal.h"



@implementation GCRestrictionNoticeAttribute {

}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCRestrictionNoticeAttribute"];
}

// Methods:
/** Initializes and returns a restrictionNotice.

 
 @return A new restrictionNotice.
*/
+(GCRestrictionNoticeAttribute *)restrictionNotice
{
	return [[self alloc] init];
}
/** Initializes and returns a restrictionNotice.

 @param value The value as a GCValue object.
 @return A new restrictionNotice.
*/
+(GCRestrictionNoticeAttribute *)restrictionNoticeWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/** Initializes and returns a restrictionNotice.

 @param value The value as an NSString.
 @return A new restrictionNotice.
*/
+(GCRestrictionNoticeAttribute *)restrictionNoticeWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (id)init
{
	self = [super _initWithType:@"restrictionNotice"];
	
	if (self) {
		// initialize ivars, if any:

	}
	
	return self;
}


// Properties:


@end

