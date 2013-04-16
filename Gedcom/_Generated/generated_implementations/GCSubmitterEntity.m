/*
 This file was autogenerated by tags.py 
 */

#import "GCSubmitterEntity.h"

#import "GCObject_internal.h"

#import "GCAddressAttribute.h"
#import "GCAncestralFileNumberAttribute.h"
#import "GCChangeInfoAttribute.h"
#import "GCDescriptiveNameAttribute.h"
#import "GCLanguageAttribute.h"
#import "GCMultimediaEmbeddedAttribute.h"
#import "GCMultimediaReferenceRelationship.h"
#import "GCPhoneNumberAttribute.h"
#import "GCRecordFileNumberAttribute.h"
#import "GCRecordIdNumberAttribute.h"
#import "GCUserReferenceNumberAttribute.h"

@implementation GCSubmitterEntity {
	GCDescriptiveNameAttribute *_descriptiveName;
	GCAddressAttribute *_address;
	NSMutableArray *_phoneNumbers;
	NSMutableArray *_multimediaReferences;
	NSMutableArray *_multimediaEmbeddeds;
	NSMutableArray *_languages;
	GCRecordFileNumberAttribute *_recordFileNumber;
	GCAncestralFileNumberAttribute *_ancestralFileNumber;
	NSMutableArray *_userReferenceNumbers;
	GCRecordIdNumberAttribute *_recordIdNumber;
	GCChangeInfoAttribute *_changeInfo;
}

// Methods:
/** Initializes and returns a submitter.

 @param context The context in which to create the entity.
 @return A new submitter.
*/
+(GCSubmitterEntity *)submitterInContext:(GCContext *)context
{
	return [[self alloc] initInContext:context];
}
- (id)initInContext:(GCContext *)context
{
	self = [super _initWithType:@"submitter" inContext:context];
	
	if (self) {
		// initialize ivars, if any:
		_phoneNumbers = [NSMutableArray array];
		_multimediaReferences = [NSMutableArray array];
		_multimediaEmbeddeds = [NSMutableArray array];
		_languages = [NSMutableArray array];
		_userReferenceNumbers = [NSMutableArray array];
	}
	
	return self;
}


// Properties:
@dynamic descriptiveName;
@dynamic address;

- (NSMutableArray *)mutablePhoneNumbers {
	return [self mutableArrayValueForKey:@"phoneNumbers"];
}

- (NSUInteger)countOfPhoneNumbers {
	return [_phoneNumbers count];
}

- (id)objectInPhoneNumbersAtIndex:(NSUInteger)index {
	return [_phoneNumbers objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inPhoneNumbersAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCPhoneNumberAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromPhoneNumbersAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_phoneNumbers insertObject:obj atIndex:index];
}

- (void)removeObjectFromPhoneNumbersAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_phoneNumbers[index] inPhoneNumbersAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_phoneNumbers[index]) setValue:nil forKey:@"describedObject"];
	
	[_phoneNumbers removeObjectAtIndex:index];
}

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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromMultimediaReferencesAtIndex:index];
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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_multimediaReferences[index] inMultimediaReferencesAtIndex:index];
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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromMultimediaEmbeddedsAtIndex:index];
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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_multimediaEmbeddeds[index] inMultimediaEmbeddedsAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_multimediaEmbeddeds[index]) setValue:nil forKey:@"describedObject"];
	
	[_multimediaEmbeddeds removeObjectAtIndex:index];
}


- (NSMutableArray *)mutableLanguages {
	return [self mutableArrayValueForKey:@"languages"];
}

- (NSUInteger)countOfLanguages {
	return [_languages count];
}

- (id)objectInLanguagesAtIndex:(NSUInteger)index {
	return [_languages objectAtIndex:index];
}
 
- (void)insertObject:(id)obj inLanguagesAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCLanguageAttribute class]]);
	
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromLanguagesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	if ([obj valueForKey:@"describedObject"] == self) {
		return;
	}
	
	if ([obj valueForKey:@"describedObject"]) {
		[((GCObject *)[obj valueForKey:@"describedObject"]).mutableProperties removeObject:obj];
	}
	
	[obj setValue:self forKey:@"describedObject"];
	
	[_languages insertObject:obj atIndex:index];
}

- (void)removeObjectFromLanguagesAtIndex:(NSUInteger)index {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *formatString = [frameworkBundle localizedStringForKey:@"Undo %@"
															  value:@"Undo %@"
															  table:@"Misc"];
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_languages[index] inLanguagesAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_languages[index]) setValue:nil forKey:@"describedObject"];
	
	[_languages removeObjectAtIndex:index];
}

@dynamic recordFileNumber;
@dynamic ancestralFileNumber;

- (NSMutableArray *)mutableUserReferenceNumbers {
	return [self mutableArrayValueForKey:@"userReferenceNumbers"];
}

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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] removeObjectFromUserReferenceNumbersAtIndex:index];
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
	
	[(GCSubmitterEntity *)[self.undoManager prepareWithInvocationTarget:self] insertObject:_userReferenceNumbers[index] inUserReferenceNumbersAtIndex:index];
	[self.undoManager setActionName:[NSString stringWithFormat:formatString, self.localizedType]];
	
	[((GCObject *)_userReferenceNumbers[index]) setValue:nil forKey:@"describedObject"];
	
	[_userReferenceNumbers removeObjectAtIndex:index];
}

@dynamic recordIdNumber;
@dynamic changeInfo;

@end

