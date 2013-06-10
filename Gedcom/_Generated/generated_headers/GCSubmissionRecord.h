/*
 This file was autogenerated by tags.py 
 */

#import "GCRecord.h"

@class GCChangeInfoAttribute;
@class GCFamilyFileAttribute;
@class GCGenerationsOfAncestorsAttribute;
@class GCGenerationsOfDescendantsAttribute;
@class GCOrdinanceFlagAttribute;
@class GCRecordIdNumberAttribute;
@class GCSubmitterReferenceRelationship;
@class GCTempleAttribute;
@class GCUserReferenceNumberAttribute;

/**
 The sending system uses a submission record to send instructions and information to the receiving system.
*/
@interface GCSubmissionRecord : GCRecord

// Methods:
/// @name Initializing

/** Initializes and returns a submission.

 @param context The context in which to create the entity.
 @return A new submission.
*/
+(instancetype)submissionInContext:(GCContext *)context;

// Properties:
/// . 
@property (nonatomic, strong) GCSubmitterReferenceRelationship *submitterReference;

/// . 
@property (nonatomic, strong) GCFamilyFileAttribute *familyFile;

/// . 
@property (nonatomic, strong) GCTempleAttribute *temple;

/// . 
@property (nonatomic, strong) GCGenerationsOfAncestorsAttribute *generationsOfAncestors;

/// . 
@property (nonatomic, strong) GCGenerationsOfDescendantsAttribute *generationsOfDescendants;

/// . 
@property (nonatomic, strong) GCOrdinanceFlagAttribute *ordinanceFlag;

/// . GCUserReferenceNumberAttribute
@property (nonatomic, strong) NSArray *userReferenceNumbers;
/// . Contains instances of userReferenceNumbers
@property (nonatomic, strong) NSMutableArray *mutableUserReferenceNumbers;

/// . 
@property (nonatomic, strong) GCRecordIdNumberAttribute *recordIdNumber;

/// . 
@property (nonatomic, strong) GCChangeInfoAttribute *changeInfo;


@end
