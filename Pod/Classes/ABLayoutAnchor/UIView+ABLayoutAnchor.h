//
//  UIView+ABLayoutAnchor.h
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ABLayoutXAxisAnchor;
@class ABLayoutYAxisAnchor;
@class ABLayoutDimension;

@interface UIView (ABLayoutAnchor)

/* Constraint creation conveniences. See ABLayoutAnchor.h for details.
 */
@property (readonly, strong) ABLayoutXAxisAnchor *ab_leadingAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *ab_trailingAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *ab_leftAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *ab_rightAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *ab_topAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *ab_bottomAnchor;
@property (readonly, strong) ABLayoutDimension *ab_widthAnchor;
@property (readonly, strong) ABLayoutDimension *ab_heightAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *ab_centerXAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *ab_centerYAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *ab_firstBaselineAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *ab_lastBaselineAnchor;

@end

NS_ASSUME_NONNULL_END
