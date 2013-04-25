/*
 This file was autogenerated by tags.py 
 */

#import "GCRelationship.h"

@class GCCallNumberAttribute;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;

/**
 
*/
@interface GCRepositoryCitationRelationship : GCRelationship

// Methods:
/** Initializes and returns a repositoryCitation.

 
 @return A new repositoryCitation.
*/
+(instancetype)repositoryCitation;

// Properties:
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

/// . GCCallNumberAttribute
@property (nonatomic) NSArray *callNumbers;
/// . Contains instances of callNumbers
@property (nonatomic) NSMutableArray *mutableCallNumbers;


@end

