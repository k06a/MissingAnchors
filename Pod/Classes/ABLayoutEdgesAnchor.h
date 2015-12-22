//
//  ABLayoutEdgesAnchor.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, ABLayoutEdgesAttribute) {
    ABLayoutEdgesAttributeTop      = 1 << 0,
    ABLayoutEdgesAttributeBottom   = 1 << 1,
    ABLayoutEdgesAttributeLeading  = 1 << 2,
    ABLayoutEdgesAttributeTrailing = 1 << 3,
    
    ABLayoutEdgesAttributeVertical   = (ABLayoutEdgesAttributeTop | ABLayoutEdgesAttributeBottom),
    ABLayoutEdgesAttributeHorizontal = (ABLayoutEdgesAttributeLeading | ABLayoutEdgesAttributeTrailing),
    ABLayoutEdgesAttributeAll        = (ABLayoutEdgesAttributeVertical | ABLayoutEdgesAttributeHorizontal),
};

@interface ABLayoutEdgesAnchor : NSObject

@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTopAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withBottomAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withLeadingAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTrailingAnchor;

@property (readonly, nonatomic) ABLayoutEdgesAnchor *withoutTopAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withoutBottomAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withoutLeadingAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withoutTrailingAnchor;

/* These methods return an array of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c;

@end
