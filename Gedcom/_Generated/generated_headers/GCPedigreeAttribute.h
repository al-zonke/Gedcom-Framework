/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;

/**
 
*/
@interface GCPedigreeAttribute : GCAttribute

// Methods:
/// @name Initializing

/** Initializes and returns a pedigree.

 
 @return A new pedigree.
*/
+(instancetype)pedigree;
/// @name Initializing

/** Initializes and returns a pedigree.

 @param value The value as a GCValue object.
 @return A new pedigree.
*/
+(instancetype)pedigreeWithValue:(GCValue *)value;
/// @name Initializing

/** Initializes and returns a pedigree.

 @param value The value as an NSString.
 @return A new pedigree.
*/
+(instancetype)pedigreeWithGedcomStringValue:(NSString *)value;

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
