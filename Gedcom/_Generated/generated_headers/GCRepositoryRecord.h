/*
 This file was autogenerated by tags.py 
 */

#import "GCRecord.h"

@class GCAddressAttribute;
@class GCChangeInfoAttribute;
@class GCDescriptiveNameAttribute;
@class GCEmailAddressAttribute;
@class GCFaxNumberAttribute;
@class GCNoteEmbeddedAttribute;
@class GCNoteReferenceRelationship;
@class GCPhoneNumberAttribute;
@class GCRecordIdNumberAttribute;
@class GCUserReferenceNumberAttribute;
@class GCWebAddressAttribute;

/**
 
*/
@interface GCRepositoryRecord : GCRecord

// Methods:
/// @name Initializing

/** Initializes and returns a repository.

 @param context The context in which to create the entity.
 @return A new repository.
*/
+(instancetype)repositoryInContext:(GCContext *)context;

// Properties:
/// . 
@property (nonatomic, strong) GCDescriptiveNameAttribute *descriptiveName;

/// @name Accessing address structures

/// Property for accessing the following properties
@property (nonatomic, strong) NSArray *addressStructures;

/// @name Accessing address structures 

///Also contained in addressStructures. . 
@property (nonatomic, strong) GCAddressAttribute *address;

/// @name Accessing address structures 

///Also contained in addressStructures. . GCPhoneNumberAttribute
@property (nonatomic, strong) NSArray *phoneNumbers;
/// @name Accessing address structures 

///Also contained in addressStructures. . Contains instances of phoneNumbers
@property (nonatomic, strong) NSMutableArray *mutablePhoneNumbers;

/// @name Accessing address structures 

///Also contained in addressStructures. . GCEmailAddressAttribute
@property (nonatomic, strong) NSArray *emailAddresses;
/// @name Accessing address structures 

///Also contained in addressStructures. . Contains instances of emailAddresses
@property (nonatomic, strong) NSMutableArray *mutableEmailAddresses;

/// @name Accessing address structures 

///Also contained in addressStructures. . GCFaxNumberAttribute
@property (nonatomic, strong) NSArray *faxNumbers;
/// @name Accessing address structures 

///Also contained in addressStructures. . Contains instances of faxNumbers
@property (nonatomic, strong) NSMutableArray *mutableFaxNumbers;

/// @name Accessing address structures 

///Also contained in addressStructures. . GCWebAddressAttribute
@property (nonatomic, strong) NSArray *webAddresses;
/// @name Accessing address structures 

///Also contained in addressStructures. . Contains instances of webAddresses
@property (nonatomic, strong) NSMutableArray *mutableWebAddresses;

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

/// . GCUserReferenceNumberAttribute
@property (nonatomic, strong) NSArray *userReferenceNumbers;
/// . Contains instances of userReferenceNumbers
@property (nonatomic, strong) NSMutableArray *mutableUserReferenceNumbers;

/// . 
@property (nonatomic, strong) GCRecordIdNumberAttribute *recordIdNumber;

/// . 
@property (nonatomic, strong) GCChangeInfoAttribute *changeInfo;


@end
