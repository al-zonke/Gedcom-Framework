/*
 This file was autogenerated by tags.py 
 */

#import "GCRelationship.h"

@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCRecordTypeAttribute;
@class GCRelationshipDescriptorAttribute;
@class GCSourceCitationRelationship;
@class GCSourceEmbeddedAttribute;

/**
 
*/
@interface GCAssociationRelationship : GCRelationship

// Methods:
/// @name Initializing

/** Initializes and returns a association.

 
 @return A new association.
*/
+(instancetype)association;

// Properties:
/// .  NB: required property.
@property (nonatomic, strong) GCRecordTypeAttribute *recordType;

/// .  NB: required property.
@property (nonatomic, strong) GCRelationshipDescriptorAttribute *relationshipDescriptor;

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

/// @name Accessing sources

/// Property for accessing the following properties
@property (nonatomic, strong) NSArray *sources;

/// @name Accessing sources 

///Also contained in sources. . GCSourceCitationRelationship
@property (nonatomic, strong) NSArray *sourceCitations;
/// @name Accessing sources 

///Also contained in sources. . Contains instances of sourceCitations
@property (nonatomic, strong) NSMutableArray *mutableSourceCitations;

/// @name Accessing sources 

///Also contained in sources. . GCSourceEmbeddedAttribute
@property (nonatomic, strong) NSArray *sourceEmbeddeds;
/// @name Accessing sources 

///Also contained in sources. . Contains instances of sourceEmbeddeds
@property (nonatomic, strong) NSMutableArray *mutableSourceEmbeddeds;


@end
