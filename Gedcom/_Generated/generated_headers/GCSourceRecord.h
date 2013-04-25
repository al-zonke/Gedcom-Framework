/*
 This file was autogenerated by tags.py 
 */

#import "GCRecord.h"

@class GCAbbreviationAttribute;
@class GCAuthorAttribute;
@class GCChangeInfoAttribute;
@class GCMultimediaEmbeddedAttribute;
@class GCMultimediaReferenceRelationship;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPublicationFactsAttribute;
@class GCRecordIdNumberAttribute;
@class GCRepositoryCitationRelationship;
@class GCSourceDataAttribute;
@class GCTextAttribute;
@class GCTitleAttribute;
@class GCUserReferenceNumberAttribute;

/**
 Source records are used to provide a bibliographic description of the source cited.
*/
@interface GCSourceRecord : GCRecord

// Methods:
/** Initializes and returns a source.

 @param context The context in which to create the entity.
 @return A new source.
*/
+(instancetype)sourceInContext:(GCContext *)context;

// Properties:
/// . 
@property (nonatomic) GCSourceDataAttribute *sourceData;

/// . 
@property (nonatomic) GCAuthorAttribute *author;

/// . 
@property (nonatomic) GCTitleAttribute *title;

/// . 
@property (nonatomic) GCAbbreviationAttribute *abbreviation;

/// . 
@property (nonatomic) GCPublicationFactsAttribute *publicationFacts;

/// . 
@property (nonatomic) GCTextAttribute *text;

/// . 
@property (nonatomic) GCRepositoryCitationRelationship *repositoryCitation;

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

/// @name Accessing notes

/// Property for accessing the following properties
@property (nonatomic) NSArray *notes;

/// @name Accessing notes 

///Also contained in notes. . GCNoteReferenceRelationship
@property (nonatomic) NSArray *noteReferences;
/// @name Accessing notes 

///Also contained in notes. . Contains instances of noteReferences
@property (nonatomic) NSMutableArray *mutableNoteReferences;

/// @name Accessing notes 

///Also contained in notes. . GCNoteEmbeddedAttribute
@property (nonatomic) NSArray *noteEmbeddeds;
/// @name Accessing notes 

///Also contained in notes. . Contains instances of noteEmbeddeds
@property (nonatomic) NSMutableArray *mutableNoteEmbeddeds;

/// . 
@property (nonatomic) GCUserReferenceNumberAttribute *userReferenceNumber;

/// . 
@property (nonatomic) GCRecordIdNumberAttribute *recordIdNumber;

/// . 
@property (nonatomic) GCChangeInfoAttribute *changeInfo;


@end

