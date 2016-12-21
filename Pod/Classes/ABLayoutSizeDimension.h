//
//  ABLayoutSizeDimension.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABLayoutSizeDimension : NSObject

/* These methods return a pair of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(CGSize)c NS_SWIFT_NAME( constraints(equalToConstant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(CGSize)c NS_SWIFT_NAME( constraints(greaterThanOrEqualToConstant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(CGSize)c NS_SWIFT_NAME( constraints(lessThanOrEqualToConstant:) );

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor NS_SWIFT_NAME( constraints(equalTo:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor NS_SWIFT_NAME( constraints(greaterThanOrEqualTo:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor NS_SWIFT_NAME( constraints(lessThanOrEqualTo:) );

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c NS_SWIFT_NAME( constraints(equalTo:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c NS_SWIFT_NAME( constraints(greaterThanOrEqualTo:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c NS_SWIFT_NAME( constraints(lessThanOrEqualTo:constant:) );

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m NS_SWIFT_NAME( constraints(equalTo:multiplier:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m NS_SWIFT_NAME( constraints(greaterThanOrEqualTo:multiplier:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m NS_SWIFT_NAME( constraints(lessThanOrEqualTo:multiplier:) );

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c NS_SWIFT_NAME( constraints(equalTo:multiplier:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c NS_SWIFT_NAME( constraints(greaterThanOrEqualTo:multiplier:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c NS_SWIFT_NAME( constraints(lessThanOrEqualTo:multiplier:constant:) );

@end

NS_ASSUME_NONNULL_END
