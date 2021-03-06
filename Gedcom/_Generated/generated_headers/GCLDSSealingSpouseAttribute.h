/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCDateAttribute;
@class GCLDSSealingSpouseStatusAttribute;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPlaceAttribute;
@class GCSourceCitationRelationship;
@class GCSourceEmbeddedAttribute;
@class GCTempleAttribute;

/**
 
*/
@interface GCLDSSealingSpouseAttribute : GCAttribute

// Methods:
/// @name Initializing

/** Initializes and returns a lDSSealingSpouse.

 
 @return A new lDSSealingSpouse.
*/
+(instancetype)lDSSealingSpouse;
/// @name Initializing

/** Initializes and returns a lDSSealingSpouse.

 @param value The value as a GCValue object.
 @return A new lDSSealingSpouse.
*/
+(instancetype)lDSSealingSpouseWithValue:(GCValue *)value;
/// @name Initializing

/** Initializes and returns a lDSSealingSpouse.

 @param value The value as an NSString.
 @return A new lDSSealingSpouse.
*/
+(instancetype)lDSSealingSpouseWithGedcomStringValue:(NSString *)value;

// Properties:
/// . 
@property (nonatomic, strong) GCLDSSealingSpouseStatusAttribute *lDSSealingSpouseStatus;

/// . 
@property (nonatomic, strong) GCDateAttribute *date;

/// . 
@property (nonatomic, strong) GCTempleAttribute *temple;

/// . 
@property (nonatomic, strong) GCPlaceAttribute *place;

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
