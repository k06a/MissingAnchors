//
//  NSLayoutTwoDimension.h
//  Pods
//
//  Created by Антон Буков on 20.12.15.
//
//

#import <UIKit/UIKit.h>

@interface ABLayoutSizeDimension : NSObject

- (instancetype)initWithView:(UIView *)view;

/* These methods return a pair of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(CGSize)c;

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor;

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c;

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m;

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c;

@end
