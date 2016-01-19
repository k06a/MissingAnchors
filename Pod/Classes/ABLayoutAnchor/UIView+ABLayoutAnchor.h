//
//  UIView+ABLayoutAnchor.h
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <UIKit/UIKit.h>

@class ABLayoutXAxisAnchor,ABLayoutYAxisAnchor,ABLayoutDimension;
@interface UIView (ABLayoutAnchor)

/* Constraint creation conveniences. See ABLayoutAnchor.h for details.
 */
@property (readonly, strong) ABLayoutXAxisAnchor *leadingAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *trailingAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *leftAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *rightAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *topAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *bottomAnchor;
@property (readonly, strong) ABLayoutDimension *widthAnchor;
@property (readonly, strong) ABLayoutDimension *heightAnchor;
@property (readonly, strong) ABLayoutXAxisAnchor *centerXAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *centerYAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *firstBaselineAnchor;
@property (readonly, strong) ABLayoutYAxisAnchor *lastBaselineAnchor;

@end
