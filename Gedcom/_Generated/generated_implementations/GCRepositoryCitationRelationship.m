/*
 This file was autogenerated by tags.py 
 */

#import "GCRepositoryCitationRelationship.h"

@implementation GCRepositoryCitationRelationship {
	NSMutableArray *_noteReferences;
	NSMutableArray *_noteEmbeddeds;
	NSMutableArray *_callNumbers;
}

// Methods:
/// @name Initializing

/** Initializes and returns a repositoryCitation.

 
 @return A new repositoryCitation.
*/
+(instancetype)repositoryCitation
{
	return [[self alloc] init];
}
- (instancetype)init
{
	self = [super init];
	
	if (self) {
		// initialize ivars, if any:
		_noteReferences = [NSMutableArray array];
		_noteEmbeddeds = [NSMutableArray array];
		_callNumbers = [NSMutableArray array];
	}
	
	return self;
}


// Properties:
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

@synthesize callNumbers = _callNumbers;
@dynamic mutableCallNumbers;
- (NSMutableArray *)mutableCallNumbers
{
	return [self mutableArrayValueForKey:@"callNumbers"];
}


@end
