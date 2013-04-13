/*
 This file was autogenerated by tags.py 
 */

#import "GCSubmitterEntity.h"

#import "GCObject_internal.h"
#import "GCProperty_internal.h"

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

- (void)setDescriptiveName:(GCProperty *)obj
{
	if (_descriptiveName) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_descriptiveName = (id)obj;
}

- (GCDescriptiveNameAttribute *)descriptiveName
{
	return _descriptiveName;
}


- (void)setAddress:(GCProperty *)obj
{
	if (_address) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_address = (id)obj;
}

- (GCAddressAttribute *)address
{
	return _address;
}


- (NSMutableArray *)mutablePhoneNumbers {
    return [self mutableArrayValueForKey:@"phoneNumbers"];
}

- (NSUInteger)countOfPhoneNumbers {
	return [_phoneNumbers count];
}

- (id)objectInPhoneNumbersAtIndex:(NSUInteger)index {
    return [_phoneNumbers objectAtIndex:index];
}
 
- (void)insertObject:(GCProperty *)obj inPhoneNumbersAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCPhoneNumberAttribute class]]);
	if (obj.describedObject == self) {
		return;
	}
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	obj.describedObject = self;
    [_phoneNumbers insertObject:obj atIndex:index];
}

- (void)removeObjectFromPhoneNumbersAtIndex:(NSUInteger)index {
	((GCProperty *)_phoneNumbers[index]).describedObject = nil;
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
 
- (void)insertObject:(GCProperty *)obj inMultimediaReferencesAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCMultimediaReferenceRelationship class]]);
	if (obj.describedObject == self) {
		return;
	}
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	obj.describedObject = self;
    [_multimediaReferences insertObject:obj atIndex:index];
}

- (void)removeObjectFromMultimediaReferencesAtIndex:(NSUInteger)index {
	((GCProperty *)_multimediaReferences[index]).describedObject = nil;
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
 
- (void)insertObject:(GCProperty *)obj inMultimediaEmbeddedsAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCMultimediaEmbeddedAttribute class]]);
	if (obj.describedObject == self) {
		return;
	}
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	obj.describedObject = self;
    [_multimediaEmbeddeds insertObject:obj atIndex:index];
}

- (void)removeObjectFromMultimediaEmbeddedsAtIndex:(NSUInteger)index {
	((GCProperty *)_multimediaEmbeddeds[index]).describedObject = nil;
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
 
- (void)insertObject:(GCProperty *)obj inLanguagesAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCLanguageAttribute class]]);
	if (obj.describedObject == self) {
		return;
	}
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	obj.describedObject = self;
    [_languages insertObject:obj atIndex:index];
}

- (void)removeObjectFromLanguagesAtIndex:(NSUInteger)index {
	((GCProperty *)_languages[index]).describedObject = nil;
    [_languages removeObjectAtIndex:index];
}
	

- (void)setRecordFileNumber:(GCProperty *)obj
{
	if (_recordFileNumber) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_recordFileNumber = (id)obj;
}

- (GCRecordFileNumberAttribute *)recordFileNumber
{
	return _recordFileNumber;
}


- (void)setAncestralFileNumber:(GCProperty *)obj
{
	if (_ancestralFileNumber) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_ancestralFileNumber = (id)obj;
}

- (GCAncestralFileNumberAttribute *)ancestralFileNumber
{
	return _ancestralFileNumber;
}


- (NSMutableArray *)mutableUserReferenceNumbers {
    return [self mutableArrayValueForKey:@"userReferenceNumbers"];
}

- (NSUInteger)countOfUserReferenceNumbers {
	return [_userReferenceNumbers count];
}

- (id)objectInUserReferenceNumbersAtIndex:(NSUInteger)index {
    return [_userReferenceNumbers objectAtIndex:index];
}
 
- (void)insertObject:(GCProperty *)obj inUserReferenceNumbersAtIndex:(NSUInteger)index {
	NSParameterAssert([obj isKindOfClass:[GCUserReferenceNumberAttribute class]]);
	if (obj.describedObject == self) {
		return;
	}
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	obj.describedObject = self;
    [_userReferenceNumbers insertObject:obj atIndex:index];
}

- (void)removeObjectFromUserReferenceNumbersAtIndex:(NSUInteger)index {
	((GCProperty *)_userReferenceNumbers[index]).describedObject = nil;
    [_userReferenceNumbers removeObjectAtIndex:index];
}
	

- (void)setRecordIdNumber:(GCProperty *)obj
{
	if (_recordIdNumber) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_recordIdNumber = (id)obj;
}

- (GCRecordIdNumberAttribute *)recordIdNumber
{
	return _recordIdNumber;
}


- (void)setChangeInfo:(GCProperty *)obj
{
	if (_changeInfo) {
		obj.describedObject = nil;
	}
	
	if (obj.describedObject) {
		[obj.describedObject.mutableProperties removeObject:obj];
	}
	
	obj.describedObject = self;
	
	_changeInfo = (id)obj;
}

- (GCChangeInfoAttribute *)changeInfo
{
	return _changeInfo;
}


@end
