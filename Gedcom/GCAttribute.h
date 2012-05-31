//
//  GCAttribute.h
//  Gedcom
//
//  Created by Mikkel Eide Eriksen on 27/03/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "GCProperty.h"

@class GCValue;

/**
 
 Attributes are properties that describe a key/value pair on another GCObject. For example, a person's name or the date of an event are attributes.
 
 In the first example, the attribute's type would be "personalName", and the value would be a GCNamestring containing the name. The attribute can then have further properties, such as a nickname, or source references.
 
 In the latter, the type would be "date", and the value would be a GCDate.
 
 */
@interface GCAttribute : GCProperty

#pragma mark Convenience constructors

/// @name Creating attributes
/** Returns an attribute whose type, value, and properties reflect the GCNode.
 
 @param object The object being described.
 @param node A GCNode. Its tag code must correspond to a valid property on the object.
 @return A new attribute.
 */
+ (id)attributeForObject:(GCObject *)object withGedcomNode:(GCNode *)node;

/** Returns an attribute with a given type.
 
 The attribute's describedObject and value will be nil and must be set manually afterwards.
 
 @param type The type of the attribute.
 @return A new attribute.
 */
+ (id)attributeWithType:(NSString *)type;

#pragma mark Objective-C properties

/// @name Accessing values
/** The GCValue of the attribute.
 
 May be nil.
 
 */
@property GCValue *value;

@end

@interface GCAttribute (GCConvenienceMethods)

/// @name Creating attributes
/** Returns an attribute with the specified type and value.
 
 @param type The type of the attribute.
 @param value A GCValue.
 @return A new attribute.
 
 */
+ (id)attributeWithType:(NSString *)type value:(GCValue *)value;

/** Returns an attribute with the specified type and value.
 
 The appropiate GCValue subclass will be created.
 
 @param type The type of the attribute.
 @param value An NSString.
 @return A new attribute.
 
 */
+ (id)attributeWithType:(NSString *)type gedcomStringValue:(NSString *)value;

/// @name Accessing values
/** Convenience method for setting the attribute's value with a given string.
 
 The attribute will create an appropiate GCValue subclass object.
 
 @param string The string value to use.
 */
- (void)setValueWithGedcomString:(NSString *)string;



@end
