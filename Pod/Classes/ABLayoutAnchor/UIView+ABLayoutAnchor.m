//
//  UIView+ABLayoutAnchor.m
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import "ABLayoutAnchor.h"
#import "ABLayoutAnchor_Private.h"
#import "UIView+ABLayoutAnchor.h"

@implementation UIView (ABLayoutAnchor)

- (ABLayoutXAxisAnchor *)leadingAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeading];
}

- (ABLayoutXAxisAnchor *)trailingAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTrailing];
}

- (ABLayoutXAxisAnchor *)leftAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeft];
}

- (ABLayoutXAxisAnchor *)rightAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeRight];
}

- (ABLayoutYAxisAnchor *)topAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTop];
}

- (ABLayoutYAxisAnchor *)bottomAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeBottom];
}

- (ABLayoutDimension *)widthAnchor {
    return [[ABLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeWidth];
}

- (ABLayoutDimension *)heightAnchor {
    return [[ABLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeHeight];
}

- (ABLayoutXAxisAnchor *)centerXAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterX];
}

- (ABLayoutYAxisAnchor *)centerYAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterY];
}

- (ABLayoutYAxisAnchor *)firstBaselineAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeFirstBaseline];
}

- (ABLayoutYAxisAnchor *)lastBaselineAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLastBaseline];
}

@end
