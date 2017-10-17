//
//  ABLayoutEdgesAnchor.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

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
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(equalToConstant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(greaterThanOrEqualToConstant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(lessThanOrEqualToConstant:) );

- (NSArray<NSLayoutConstraint *> *)constraintsEqualToSafeAreaConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(equalToSafeAreaConstant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToSafeAreaConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(greaterThanOrEqualToSafeAreaConstant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToSafeAreaConstant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(lessThanOrEqualToConstant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));

/* These methods return an array of inactive constraints of the form
 thisVariable = view + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToView:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(equalToView:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToView:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(greaterThanOrEqualToView:constant:) );
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToView:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(lessThanOrEqualToView:constant:) );

- (NSArray<NSLayoutConstraint *> *)constraintsEqualToViewSafeArea:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(equalToViewSafeArea:constant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToViewSafeArea:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(greaterThanOrEqualToViewSafeArea:constant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToViewSafeArea:(UIView *)view constant:(UIEdgeInsets)c NS_SWIFT_NAME( constraints(lessThanOrEqualToViewSafeArea:constant:) ) API_AVAILABLE(ios(11.0),tvos(11.0));

@end

NS_ASSUME_NONNULL_END
