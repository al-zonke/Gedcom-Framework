/*
 This file was autogenerated by tags.py 
 */

#import "GCRecord.h"

@class GCChangeInfoAttribute;
@class GCRecordIdNumberAttribute;
@class GCSourceCitationRelationship;
@class GCSourceEmbeddedAttribute;
@class GCUserReferenceNumberAttribute;

/**
 
*/
@interface GCNoteRecord : GCRecord

// Methods:
/// @name Initializing

/** Initializes and returns a note.

 @param context The context in which to create the entity.
 @return A new note.
*/
+(instancetype)noteInContext:(GCContext *)context;

// Properties:
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

/// . GCUserReferenceNumberAttribute
@property (nonatomic, strong) NSArray *userReferenceNumbers;
/// . Contains instances of userReferenceNumbers
@property (nonatomic, strong) NSMutableArray *mutableUserReferenceNumbers;

/// . 
@property (nonatomic, strong) GCRecordIdNumberAttribute *recordIdNumber;

/// . 
@property (nonatomic, strong) GCChangeInfoAttribute *changeInfo;


@end
