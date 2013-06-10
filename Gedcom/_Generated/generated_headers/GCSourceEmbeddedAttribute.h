/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCTextAttribute;

/**
 
*/
@interface GCSourceEmbeddedAttribute : GCAttribute

// Methods:
/// @name Initializing

/** Initializes and returns a sourceEmbedded.

 
 @return A new sourceEmbedded.
*/
+(instancetype)sourceEmbedded;
/// @name Initializing

/** Initializes and returns a sourceEmbedded.

 @param value The value as a GCValue object.
 @return A new sourceEmbedded.
*/
+(instancetype)sourceEmbeddedWithValue:(GCValue *)value;
/// @name Initializing

/** Initializes and returns a sourceEmbedded.

 @param value The value as an NSString.
 @return A new sourceEmbedded.
*/
+(instancetype)sourceEmbeddedWithGedcomStringValue:(NSString *)value;

// Properties:
/// . GCTextAttribute
@property (nonatomic, strong) NSArray *texts;
/// . Contains instances of texts
@property (nonatomic, strong) NSMutableArray *mutableTexts;

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
