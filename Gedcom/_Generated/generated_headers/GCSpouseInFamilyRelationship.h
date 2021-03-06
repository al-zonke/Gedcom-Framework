/*
 This file was autogenerated by tags.py 
 */

#import "GCRelationship.h"

@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;

/**
 
*/
@interface GCSpouseInFamilyRelationship : GCRelationship

// Methods:
/// @name Initializing

/** Initializes and returns a spouseInFamily.

 
 @return A new spouseInFamily.
*/
+(instancetype)spouseInFamily;

// Properties:
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
