//
//  ABLayoutEdgesDimension.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutEdgesDimension.h"

@interface ABLayoutEdgesDimension ()

@property (weak, nonatomic) UIView *view;

@end

@implementation ABLayoutEdgesDimension

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        self.view = view;
    }
    return self;
}

/* These methods return an array of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c {
    return @[[self.view.topAnchor constraintEqualToAnchor:self.view.superview.topAnchor constant:c.top],
             [self.view.leftAnchor constraintEqualToAnchor:self.view.superview.leftAnchor constant:c.left],
             [self.view.rightAnchor constraintEqualToAnchor:self.view.superview.rightAnchor constant:-c.right],
             [self.view.bottomAnchor constraintEqualToAnchor:self.view.superview.bottomAnchor constant:-c.bottom]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c {
    return @[[self.view.topAnchor constraintGreaterThanOrEqualToAnchor:self.view.superview.topAnchor constant:c.top],
             [self.view.leftAnchor constraintGreaterThanOrEqualToAnchor:self.view.superview.leftAnchor constant:c.left],
             [self.view.rightAnchor constraintLessThanOrEqualToAnchor:self.view.superview.rightAnchor constant:-c.right],
             [self.view.bottomAnchor constraintLessThanOrEqualToAnchor:self.view.superview.bottomAnchor constant:-c.bottom]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c {
    return @[[self.view.topAnchor constraintLessThanOrEqualToAnchor:self.view.superview.topAnchor constant:c.top],
             [self.view.leftAnchor constraintLessThanOrEqualToAnchor:self.view.superview.leftAnchor constant:c.left],
             [self.view.rightAnchor constraintGreaterThanOrEqualToAnchor:self.view.superview.rightAnchor constant:-c.right],
             [self.view.bottomAnchor constraintGreaterThanOrEqualToAnchor:self.view.superview.bottomAnchor constant:-c.bottom]];
}

@end
