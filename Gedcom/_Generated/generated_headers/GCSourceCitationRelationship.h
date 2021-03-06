/*
 This file was autogenerated by tags.py 
 */

#import "GCRelationship.h"

@class GCDataAttribute;
@class GCEventCitedAttribute;
@class GCMultimediaEmbeddedAttribute;
@class GCMultimediaReferenceRelationship;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPageAttribute;
@class GCQualityOfDataAttribute;

/**
 
*/
@interface GCSourceCitationRelationship : GCRelationship

// Methods:
/// @name Initializing

/** Initializes and returns a sourceCitation.

 
 @return A new sourceCitation.
*/
+(instancetype)sourceCitation;

// Properties:
/// . 
@property (nonatomic, strong) GCPageAttribute *page;

/// . 
@property (nonatomic, strong) GCDataAttribute *data;

/// . 
@property (nonatomic, strong) GCEventCitedAttribute *eventCited;

/// . 
@property (nonatomic, strong) GCQualityOfDataAttribute *qualityOfData;

/// @name Accessing multimedias

/// Property for accessing the following properties
@property (nonatomic, strong) NSArray *multimedias;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaReferenceRelationship
@property (nonatomic, strong) NSArray *multimediaReferences;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaReferences
@property (nonatomic, strong) NSMutableArray *mutableMultimediaReferences;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaEmbeddedAttribute
@property (nonatomic, strong) NSArray *multimediaEmbeddeds;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaEmbeddeds
@property (nonatomic, strong) NSMutableArray *mutableMultimediaEmbeddeds;

/// @name Accessing notes

/// Property for accessing the following properties
@property (nonatomic, strong) NSArray *notes;

/// @name Accessing notes 

///Also contained in notes. . GCNoteReferenceRelationship
@property (nonatomic, strong) NSArray *noteReferences;
/// @name Accessing notes 

///Also contained in notes. . Contains instances of noteReferences
@property (nonatomic, strong) NSMutableArray *mutableNoteReferences;

/// @name Accessing notes 

///Also contained in notes. . GCNoteEmbeddedAttribute
@property (nonatomic, strong) NSArray *noteEmbeddeds;
/// @name Accessing notes 

///Also contained in notes. . Contains instances of noteEmbeddeds
@property (nonatomic, strong) NSMutableArray *mutableNoteEmbeddeds;


@end
