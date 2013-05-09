/*
 This file was autogenerated by tags.py 
 */

#import "GCMultimediaEmbeddedAttribute.h"

@implementation GCMultimediaEmbeddedAttribute {
	GCMultimediaFormatAttribute *_multimediaFormat;
	GCTitleAttribute *_title;
	GCFileAttribute *_file;
	NSMutableArray *_noteReferences;
	NSMutableArray *_noteEmbeddeds;
}

// Methods:
/// @name Initializing

/** Initializes and returns a multimediaEmbedded.

 
 @return A new multimediaEmbedded.
*/
+(instancetype)multimediaEmbedded
{
	return [[self alloc] init];
}
/// @name Initializing

/** Initializes and returns a multimediaEmbedded.

 @param value The value as a GCValue object.
 @return A new multimediaEmbedded.
*/
+(instancetype)multimediaEmbeddedWithValue:(GCValue *)value
{
	return [[self alloc] initWithValue:value];
}
/// @name Initializing

/** Initializes and returns a multimediaEmbedded.

 @param value The value as an NSString.
 @return A new multimediaEmbedded.
*/
+(instancetype)multimediaEmbeddedWithGedcomStringValue:(NSString *)value
{
	return [[self alloc] initWithGedcomStringValue:value];
}
- (instancetype)init
{
	self = [super init];
	
	if (self) {
		// initialize ivars, if any:
		_noteReferences = [NSMutableArray array];
		_noteEmbeddeds = [NSMutableArray array];
	}
	
	return self;
}


// Properties:
@dynamic multimediaFormat;
@dynamic title;
@dynamic file;
@dynamic notes;
@synthesize noteReferences = _noteReferences;
@dynamic mutableNoteReferences;
- (NSMutableArray *)mutableNoteReferences
{
	return [self mutableArrayValueForKey:@"noteReferences"];
}

@synthesize noteEmbeddeds = _noteEmbeddeds;
@dynamic mutableNoteEmbeddeds;
- (NSMutableArray *)mutableNoteEmbeddeds
{
	return [self mutableArrayValueForKey:@"noteEmbeddeds"];
}


@end
