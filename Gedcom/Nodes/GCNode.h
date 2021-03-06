//
//  GCNode.h
//  GCParseKitTest
//
//  Created by Mikkel Eide Eriksen on 02/12/09.
//  Copyright 2009 Mikkel Eide Eriksen. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 Nodes are structures representing Gedcom data as nested objects with accessors for tags, values, xrefs, etc.
 
 ```
    // get an array of nodes from a string
    NSArray *nodes = [GCNodeParser arrayOfNodesFromString:@"0 HEAD\n1 ..."];
    
    // find all individuals
    for (GCNode *node in nodes) {
        if ([node.gedTag isEqualToString:@"INDI"]) {
            // and print their names:
            for (GCNode *name in node[@"NAME"]) {
                NSLog(@"name found: %@", name.gedcomValue);
            }
        }
    }
 
 ```
 
 */
@interface GCNode : NSObject <NSCopying, NSCoding>

#pragma mark Initialization

/// @name Creating and initializing nodes

/** Initializes and returns a node with the specified properties.
 
 @param tag A letter string such as @"INDI" or @"NOTE"; alternately an underscore-prefixed string such as @"_CUSTOMTAG".
 @param value An optional value.
 @param xref An optional xref.
 @param subNodes An ordered collection of nodes. If `nil`, the node will create an empty collection.
 @return A new node.
 */
- (instancetype)initWithTag:(NSString *)tag value:(NSString *)value xref:(NSString *)xref subNodes:(id)subNodes;

#pragma mark Subscript accessors

/** Returns the subnodes with the given tag. Used like in NSDictionary.
 
 @param key The requested tag.
 @return An array of subnodes. Will be empty if none are found.
 */
- (id)objectForKeyedSubscript:(id)key;

#pragma mark Gedcom output

/// @name Gedcom output

/// The receiver including its subnodes as a string. Lines will be separated by `\n` - if another separator is desired, use gedcomLines and join them as appropriate.
@property (readonly) NSString *gedcomString;

/** The receiver including its subnodes as an attributed string.
 
 The string will have substrings marked with one of the following attributes: 
 
 GCLevelAttributeName,
 GCXrefAttributeName,
 GCTagAttributeName,
 GCValueAttributeName, or
 GCLinkAttributeName
 
 */
@property (readonly) NSAttributedString *attributedGedcomString;

/// The receiver including its subnodes as an array of strings.
@property (readonly) NSArray *gedcomLines;

#pragma mark Comparison

/** Compares the receiver to another node.
 
 Equivalence is determined by comparing the tag, xref and value of the nodes, and comparing all subNodes in turn. The order of subNodes is disregarded.
 
 Returns `YES` if the nodes are equivalent, otherwise `NO`.
 
 @param other Another GCNode object.
 @return A BOOL indicating equivalence.
 */
- (BOOL)isEquivalentTo:(GCNode *)other;

#pragma mark - Objective-C properties -

/// @name Accessing properties

/// The parent node of the receiver; will be `nil` for root nodes.
@property (weak, readonly, nonatomic) GCNode *parent;

/// The tag code of the receiver; may not be `nil`.
@property (nonatomic, strong) NSString *tagCode;

/// The value of the receiver; may be `nil`.
@property (nonatomic, strong) NSString *gedcomValue;

/// `TRUE` the value is non-nil and is wrapped in `@`s, otherwise `NO`.
@property (readonly, nonatomic) BOOL valueIsXref;

/// The xref of the receiver; may be `nil`.
@property (nonatomic, strong) NSString *xref;

/// An ordered collection containing the subnodes of the receiver.
/// @see mutableSubNodes.
@property (nonatomic, strong) NSArray *subNodes;
/// A mutable KVC-compliant ordered collection containing the subnodes of the receiver.
/// @see subNodes.
@property (nonatomic, strong) NSMutableArray *mutableSubNodes;

/// A uniquing collection containing the gedTags for all subNodes of the receiver.
@property (readonly, nonatomic) NSSet *allSubTags;

@end

@interface GCNode (GCConvenienceMethods)

/// @name Creating and initializing nodes

/** Returns a node with the specified properties.
 
 @param tag A three or four letter string such as @"INDI" or @"FAM"; alternately an underscore-prefixed string such as @"_CUSTOMTAG".
 @param value An optional value.
 @return A new node.
 */
+ (instancetype)nodeWithTag:(NSString *)tag value:(NSString *)value;

/** Returns a node with the specified properties.
 
 @param tag A three or four letter string such as @"INDI" or @"FAM"; alternately an underscore-prefixed string such as @"_CUSTOMTAG".
 @param xref An optional xref.
 @return A new node.
 */
+ (instancetype)nodeWithTag:(NSString *)tag xref:(NSString *)xref;

/** Returns a node with the specified properties.
 
 @param tag A three or four letter string such as @"INDI" or @"FAM"; alternately an underscore-prefixed string such as @"_CUSTOMTAG".
 @param value An optional value.
 @param subNodes An ordered collection of nodes. If `nil`, the node will create an empty collection.
 @return A new node.
 */
+ (instancetype)nodeWithTag:(NSString *)tag value:(NSString *)value subNodes:(id)subNodes;

/** Returns a node with the specified properties.
 
 @param tag A three or four letter string such as @"INDI" or @"FAM"; alternately an underscore-prefixed string such as @"_CUSTOMTAG".
 @param xref An optional xref.
 @param subNodes An ordered collection of nodes. If `nil`, the node will create an empty collection.
 @return A new node.
 */
+ (instancetype)nodeWithTag:(NSString *)tag xref:(NSString *)xref subNodes:(id)subNodes;

@end

extern NSString *GCLevelAttributeName;
extern NSString *GCXrefAttributeName;
extern NSString *GCTagAttributeName;
extern NSString *GCValueAttributeName;
extern NSString *GCLinkAttributeName;

extern NSString *concSeparator;