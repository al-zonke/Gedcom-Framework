/*
 This file was autogenerated by tags.py 
 */

#import "GCSourceCitationRelationship.h"

#import "GCObject_internal.h"

#import "GCDataAttribute.h"
#import "GCEventCitedAttribute.h"
#import "GCMultimediaEmbeddedAttribute.h"
#import "GCMultimediaReferenceRelationship.h"
#import "GCNoteEmbeddedAttribute.h"
#import "GCNoteReferenceRelationship.h"
#import "GCPageAttribute.h"
#import "GCQualityOfDataAttribute.h"

@implementation GCSourceCitationRelationship {
	GCPageAttribute *_page;
	GCDataAttribute *_data;
	GCEventCitedAttribute *_eventCited;
	GCQualityOfDataAttribute *_qualityOfData;
	NSMutableArray *_multimediaReferences;
	NSMutableArray *_multimediaEmbeddeds;
	NSMutableArray *_noteReferences;
	NSMutableArray *_noteEmbeddeds;
}

// Methods:
/** Initializes and returns a sourceCitation.

 
 @return A new sourceCitation.
*/
+(GCSourceCitationRelationship *)sourceCitation
{
	return [[self alloc] init];
}
- (id)init
{
	self = [super _initWithType:@"sourceCitation"];
	
	if (self) {
		// initialize ivars, if any:
		_multimediaReferences = [NSMutableArray array];
		_multimediaEmbeddeds = [NSMutableArray array];
		_noteReferences = [NSMutableArray array];
		_noteEmbeddeds = [NSMutableArray array];
	}
	
	return self;
}


// Properties:
@dynamic page;
@dynamic data;
@dynamic eventCited;
@dynamic qualityOfData;
@dynamic multimedias;

- (NSMutableArray *)mutableMultimediaReferences {
	return [self mutableArrayValueForKey:@"multimediaReferences"];
}

- (NSUInteger)countOfMultimediaReferences {
	return [_multimediaReferences count];
}

- (id)objectInMultimediaReferencesAtIndex:(NSUInteger)index {
	return [_multimediaReferences objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inMultimediaReferencesAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCMultimediaReferenceRelationship class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromMultimediaReferencesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_multimediaReferences insertObject:obj atIndex:index];
}

- (void)removeObjectFromMultimediaReferencesAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_multimediaReferences[index] inMultimediaReferencesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_multimediaReferences[index]) setValue:nil forKey:@"describedObject"];
	
	[_multimediaReferences removeObjectAtIndex:index];
}


- (NSMutableArray *)mutableMultimediaEmbeddeds {
	return [self mutableArrayValueForKey:@"multimediaEmbeddeds"];
}

- (NSUInteger)countOfMultimediaEmbeddeds {
	return [_multimediaEmbeddeds count];
}

- (id)objectInMultimediaEmbeddedsAtIndex:(NSUInteger)index {
	return [_multimediaEmbeddeds objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inMultimediaEmbeddedsAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCMultimediaEmbeddedAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromMultimediaEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_multimediaEmbeddeds insertObject:obj atIndex:index];
}

- (void)removeObjectFromMultimediaEmbeddedsAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_multimediaEmbeddeds[index] inMultimediaEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_multimediaEmbeddeds[index]) setValue:nil forKey:@"describedObject"];
	
	[_multimediaEmbeddeds removeObjectAtIndex:index];
}

@dynamic notes;

- (NSMutableArray *)mutableNoteReferences {
	return [self mutableArrayValueForKey:@"noteReferences"];
}

- (NSUInteger)countOfNoteReferences {
	return [_noteReferences count];
}

- (id)objectInNoteReferencesAtIndex:(NSUInteger)index {
	return [_noteReferences objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inNoteReferencesAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCNoteReferenceRelationship class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromNoteReferencesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_noteReferences insertObject:obj atIndex:index];
}

- (void)removeObjectFromNoteReferencesAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_noteReferences[index] inNoteReferencesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_noteReferences[index]) setValue:nil forKey:@"describedObject"];
	
	[_noteReferences removeObjectAtIndex:index];
}


- (NSMutableArray *)mutableNoteEmbeddeds {
	return [self mutableArrayValueForKey:@"noteEmbeddeds"];
}

- (NSUInteger)countOfNoteEmbeddeds {
	return [_noteEmbeddeds count];
}

- (id)objectInNoteEmbeddedsAtIndex:(NSUInteger)index {
	return [_noteEmbeddeds objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inNoteEmbeddedsAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCNoteEmbeddedAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromNoteEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_noteEmbeddeds insertObject:obj atIndex:index];
}

- (void)removeObjectFromNoteEmbeddedsAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSourceCitationRelationship *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_noteEmbeddeds[index] inNoteEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_noteEmbeddeds[index]) setValue:nil forKey:@"describedObject"];
	
	[_noteEmbeddeds removeObjectAtIndex:index];
}


@end

