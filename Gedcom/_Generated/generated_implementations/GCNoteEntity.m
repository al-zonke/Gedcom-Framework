/*
 This file was autogenerated by tags.py 
 */

#import "GCNoteEntity.h"

#import "GCObject_internal.h"

#import "GCChangeInfoAttribute.h"
#import "GCRecordIdNumberAttribute.h"
#import "GCSourceCitationRelationship.h"
#import "GCSourceEmbeddedAttribute.h"
#import "GCUserReferenceNumberAttribute.h"

@implementation GCNoteEntity {
	NSMutableArray *_sourceCitations;
	NSMutableArray *_sourceEmbeddeds;
	NSMutableArray *_userReferenceNumbers;
	GCRecordIdNumberAttribute *_recordIdNumber;
	GCChangeInfoAttribute *_changeInfo;
}

+ (GCTag *)gedTag
{
	return [GCTag tagWithClassName:@"GCNoteEntity"];
}

// Methods:
/** Initializes and returns a note.

 @param context The context in which to create the entity.
 @return A new note.
*/
+(GCNoteEntity *)noteInContext:(GCContext *)context
{
	return [[self alloc] initInContext:context];
}
- (id)initInContext:(GCContext *)context
{
	self = [super _initWithType:@"note" inContext:context];
	
	if (self) {
		// initialize ivars, if any:
		_sourceCitations = [NSMutableArray array];
		_sourceEmbeddeds = [NSMutableArray array];
		_userReferenceNumbers = [NSMutableArray array];
	}
	
	return self;
}


// Properties:
@dynamic sources;

@dynamic mutableSourceCitations;

- (NSUInteger)countOfSourceCitations {
	return [_sourceCitations count];
}

- (id)objectInSourceCitationsAtIndex:(NSUInteger)index {
	return [_sourceCitations objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inSourceCitationsAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCSourceCitationRelationship class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromSourceCitationsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_sourceCitations insertObject:obj atIndex:index];
}

- (void)removeObjectFromSourceCitationsAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_sourceCitations[index] inSourceCitationsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_sourceCitations[index]) setValue:nil forKey:@"describedObject"];
	
	[_sourceCitations removeObjectAtIndex:index];
}


@dynamic mutableSourceEmbeddeds;

- (NSUInteger)countOfSourceEmbeddeds {
	return [_sourceEmbeddeds count];
}

- (id)objectInSourceEmbeddedsAtIndex:(NSUInteger)index {
	return [_sourceEmbeddeds objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inSourceEmbeddedsAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCSourceEmbeddedAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromSourceEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_sourceEmbeddeds insertObject:obj atIndex:index];
}

- (void)removeObjectFromSourceEmbeddedsAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_sourceEmbeddeds[index] inSourceEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_sourceEmbeddeds[index]) setValue:nil forKey:@"describedObject"];
	
	[_sourceEmbeddeds removeObjectAtIndex:index];
}


@dynamic mutableUserReferenceNumbers;

- (NSUInteger)countOfUserReferenceNumbers {
	return [_userReferenceNumbers count];
}

- (id)objectInUserReferenceNumbersAtIndex:(NSUInteger)index {
	return [_userReferenceNumbers objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inUserReferenceNumbersAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCUserReferenceNumberAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromUserReferenceNumbersAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_userReferenceNumbers insertObject:obj atIndex:index];
}

- (void)removeObjectFromUserReferenceNumbersAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCNoteEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_userReferenceNumbers[index] inUserReferenceNumbersAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_userReferenceNumbers[index]) setValue:nil forKey:@"describedObject"];
	
	[_userReferenceNumbers removeObjectAtIndex:index];
}

@dynamic recordIdNumber;
@dynamic changeInfo;

@end

