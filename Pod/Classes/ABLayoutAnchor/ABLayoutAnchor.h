//
//  ABLayoutAnchor.h
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <Foundation/Foundation.h>

@class NSLayoutConstraint, ABLayoutAnchor;

/* An ABLayoutAnchor represents an edge or dimension of a layout item.  Its concrete
 subclasses allow concise creation of constraints.
 Instead of invoking
 
 +[NSLayoutConstraint constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:]
 
 directly, you can instead do something like this:
 
 [myView.topAnchor constraintEqualToAnchor:otherView.topAnchor constant:10];
 
 The -constraint* methods are available in multiple flavors to support use of different
 relations and omission of unused options.
 */
@interface ABLayoutAnchor<AnchorType> : NSObject

- (instancetype)initWithItem:(UIView *)item attribute:(NSLayoutAttribute)attr;

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor;

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
@end


/* Axis-specific subclasses for location anchors: top/bottom, leading/trailing, baseline, etc.
 */
@class ABLayoutXAxisAnchor, ABLayoutYAxisAnchor;
@interface ABLayoutXAxisAnchor : ABLayoutAnchor<ABLayoutXAxisAnchor *>
@end
@interface ABLayoutYAxisAnchor : ABLayoutAnchor<ABLayoutYAxisAnchor *>
@end


/* This layout anchor subclass is used for sizes (width & height).
 */
@class ABLayoutDimension;
@interface ABLayoutDimension : ABLayoutAnchor<ABLayoutDimension *>

/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
@end
