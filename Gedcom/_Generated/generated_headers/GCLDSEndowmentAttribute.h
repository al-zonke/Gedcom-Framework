/*
 This file was autogenerated by tags.py 
 */

#import "GCIndividualLDSOrdinanceAttribute.h"

@class GCDateAttribute;
@class GCLDSEndowmentStatusAttribute;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPlaceAttribute;
@class GCSourceCitationRelationship;
@class GCSourceEmbeddedAttribute;
@class GCTempleAttribute;

/**
 
*/
@interface GCLDSEndowmentAttribute : GCIndividualLDSOrdinanceAttribute

// Methods:
/** Initializes and returns a lDSEndowment.

 
 @return A new lDSEndowment.
*/
+(instancetype)lDSEndowment;
/** Initializes and returns a lDSEndowment.

 @param value The value as a GCValue object.
 @return A new lDSEndowment.
*/
+(instancetype)lDSEndowmentWithValue:(GCValue *)value;
/** Initializes and returns a lDSEndowment.

 @param value The value as an NSString.
 @return A new lDSEndowment.
*/
+(instancetype)lDSEndowmentWithGedcomStringValue:(NSString *)value;

// Properties:
/// . 
@property (nonatomic) GCLDSEndowmentStatusAttribute *lDSEndowmentStatus;

/// . 
@property (nonatomic) GCDateAttribute *date;

/// . 
@property (nonatomic) GCTempleAttribute *temple;

/// . 
@property (nonatomic) GCPlaceAttribute *place;

/// @name Accessing sources

/// Property for accessing the following properties
@property (nonatomic) NSArray *sources;

/// @name Accessing sources 

///Also contained in sources. . GCSourceCitationRelationship
@property (nonatomic) NSArray *sourceCitations;
/// @name Accessing sources 

///Also contained in sources. . Contains instances of sourceCitations
@property (nonatomic) NSMutableArray *mutableSourceCitations;

/// @name Accessing sources 

///Also contained in sources. . GCSourceEmbeddedAttribute
@property (nonatomic) NSArray *sourceEmbeddeds;
/// @name Accessing sources 

///Also contained in sources. . Contains instances of sourceEmbeddeds
@property (nonatomic) NSMutableArray *mutableSourceEmbeddeds;

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


@end

