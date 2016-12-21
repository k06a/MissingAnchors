//
//  ABLayoutAnchor.h
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NSLayoutConstraint;
@class ABLayoutAnchor;

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

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor NS_SWIFT_NAME( constraint(equalTo:) );
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor NS_SWIFT_NAME( constraint(greaterThanOrEqualTo:) );
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor NS_SWIFT_NAME( constraint(lessThanOrEqualTo:) );

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c NS_SWIFT_NAME( constraint(equalTo:constant:) );
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c NS_SWIFT_NAME( constraint(greaterThanOrEqualTo:constant:) );
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c NS_SWIFT_NAME( constraint(lessThanOrEqualTo:constant:) );

@end


/* Axis-specific subclasses for location anchors: top/bottom, leading/trailing, baseline, etc.
 */
@class ABLayoutXAxisAnchor;
@class ABLayoutYAxisAnchor;

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
- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c NS_SWIFT_NAME( constraint(equalToConstant:) );
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c NS_SWIFT_NAME( constraint(greaterThanOrEqualeToConstant:) );
- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c NS_SWIFT_NAME( constraint(lessThanOrEqualToConstant:) );

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m NS_SWIFT_NAME( constraint(equalTo:multiplier:) );
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m NS_SWIFT_NAME( constraint(greaterThanOrEqualTo:multiplier:) );
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m NS_SWIFT_NAME( constraint(lessThanOrEqualTo:multiplier:) );

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c NS_SWIFT_NAME( constraint(equalTo:multiplier:constant:) );
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c NS_SWIFT_NAME( constraint(greaterThanOrEqualTo:multiplier:constant:) );
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c NS_SWIFT_NAME( constraint(lessThanOrEqualTo:multiplier:constant:) );

@end

NS_ASSUME_NONNULL_END
