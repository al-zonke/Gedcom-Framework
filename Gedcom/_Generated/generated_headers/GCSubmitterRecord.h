/*
 This file was autogenerated by tags.py 
 */

#import "GCRecord.h"

@class GCAddressAttribute;
@class GCAncestralFileNumberAttribute;
@class GCChangeInfoAttribute;
@class GCDescriptiveNameAttribute;
@class GCLanguageAttribute;
@class GCMultimediaEmbeddedAttribute;
@class GCMultimediaReferenceRelationship;
@class GCPhoneNumberAttribute;
@class GCRecordFileNumberAttribute;
@class GCRecordIdNumberAttribute;
@class GCUserReferenceNumberAttribute;

/**
 The submitter record identifies an individual or organization that contributed information contained in the GEDCOM transmission. All records in the transmission are assumed to be submitted by the SUBMITTER referenced in the HEADer, unless a SUBMitter reference inside a specific record points at a different SUBMITTER record.
*/
@interface GCSubmitterRecord : GCRecord

// Methods:
/** Initializes and returns a submitter.

 @param context The context in which to create the entity.
 @return A new submitter.
*/
+(instancetype)submitterInContext:(GCContext *)context;

// Properties:
/// .  NB: required property.
@property (nonatomic) GCDescriptiveNameAttribute *descriptiveName;

/// . 
@property (nonatomic) GCAddressAttribute *address;

/// . GCPhoneNumberAttribute
@property (nonatomic) NSArray *phoneNumbers;
/// . Contains instances of phoneNumbers
@property (nonatomic) NSMutableArray *mutablePhoneNumbers;

/// @name Accessing multimedias

/// Property for accessing the following properties
@property (nonatomic) NSArray *multimedias;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaReferenceRelationship
@property (nonatomic) NSArray *multimediaReferences;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaReferences
@property (nonatomic) NSMutableArray *mutableMultimediaReferences;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaEmbeddedAttribute
@property (nonatomic) NSArray *multimediaEmbeddeds;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaEmbeddeds
@property (nonatomic) NSMutableArray *mutableMultimediaEmbeddeds;

/// . GCLanguageAttribute
@property (nonatomic) NSArray *languages;
/// . Contains instances of languages
@property (nonatomic) NSMutableArray *mutableLanguages;

/// . 
@property (nonatomic) GCRecordFileNumberAttribute *recordFileNumber;

/// . 
@property (nonatomic) GCAncestralFileNumberAttribute *ancestralFileNumber;

/// . GCUserReferenceNumberAttribute
@property (nonatomic) NSArray *userReferenceNumbers;
/// . Contains instances of userReferenceNumbers
@property (nonatomic) NSMutableArray *mutableUserReferenceNumbers;

/// . 
@property (nonatomic) GCRecordIdNumberAttribute *recordIdNumber;

/// . 
@property (nonatomic) GCChangeInfoAttribute *changeInfo;


@end

