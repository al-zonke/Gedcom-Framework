/*
 This file was autogenerated by tags.py 
 */

#import "GCIndividualAttributeAttribute.h"

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
@interface GCNationalityAttribute : GCIndividualAttributeAttribute

// Methods:
/** Initializes and returns a nationality.

 
 @return A new nationality.
*/
+(instancetype)nationality;
/** Initializes and returns a nationality.

 @param value The value as a GCValue object.
 @return A new nationality.
*/
+(instancetype)nationalityWithValue:(GCValue *)value;
/** Initializes and returns a nationality.

 @param value The value as an NSString.
 @return A new nationality.
*/
+(instancetype)nationalityWithGedcomStringValue:(NSString *)value;

// Properties:
/// @name Accessing event details

/// Property for accessing the following properties
@property (nonatomic) NSArray *eventDetails;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCTypeDescriptionAttribute *typeDescription;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCDateAttribute *date;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCPlaceAttribute *place;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCAddressAttribute *address;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCPhoneNumberAttribute *phoneNumber;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCAgeAttribute *age;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCResponsibleAgencyAttribute *responsibleAgency;

/// @name Accessing event details 

///Also contained in eventDetails. . 
@property (nonatomic) GCCauseAttribute *cause;

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

/// @name Accessing multimedias

/// Property for accessing the following properties
@property (nonatomic) NSArray *multimedias;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaReferenceRelationship
@property (nonatomic) NSArray *multimediaReferences;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaReferences
@property (nonatomic) NSMutableArray *mutableMultimediaReferences;

/// @name Accessing multimedias 

///Also contained in multimedias. . GCMultimediaEmbeddedAttribute
@property (nonatomic) NSArray *multimediaEmbeddeds;
/// @name Accessing multimedias 

///Also contained in multimedias. . Contains instances of multimediaEmbeddeds
@property (nonatomic) NSMutableArray *mutableMultimediaEmbeddeds;

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

