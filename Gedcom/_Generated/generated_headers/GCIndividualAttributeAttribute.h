/*
 This file was autogenerated by tags.py 
 */

#import "GCAttribute.h"

@class GCAddressAttribute;
@class GCAgeAttribute;
@class GCCauseAttribute;
@class GCDateAttribute;
@class GCMultimediaEmbeddedAttribute;
@class GCMultimediaReferenceRelationship;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPhoneNumberAttribute;
@class GCPlaceAttribute;
@class GCResponsibleAgencyAttribute;
@class GCSourceCitationRelationship;
@class GCSourceEmbeddedAttribute;
@class GCTypeDescriptionAttribute;

/**
 
*/
@interface GCIndividualAttributeAttribute : GCAttribute

// Methods:


// Properties:
/// @name Accessing event details

/// Property for accessing the following properties
@property (nonatomic, strong) NSArray *eventDetails;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCTypeDescriptionAttribute *typeDescription;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCDateAttribute *date;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCPlaceAttribute *place;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCAddressAttribute *address;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCPhoneNumberAttribute *phoneNumber;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCAgeAttribute *age;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCResponsibleAgencyAttribute *responsibleAgency;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic, strong) GCCauseAttribute *cause;

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
