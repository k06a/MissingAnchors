//
//  ABLayoutAnchor.m
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <UIKit/UIKit.h>
#import "ABLayoutAnchor.h"

@interface ABLayoutAnchor ()

@property (strong, nonatomic) UIView *item;
@property (assign, nonatomic) NSLayoutAttribute attribute;

@end

@implementation ABLayoutAnchor

- (instancetype)initWithItem:(UIView *)item attribute:(NSLayoutAttribute)attribute {
    if (self = [super init]) {
        self.item = item;
        self.attribute = attribute;
    }
    return self;
}

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor *)anchor {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:0];
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor *)anchor {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:0];
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor *)anchor {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationLessThanOrEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:0];
}

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutAnchor *)anchor constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:c];
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutAnchor *)anchor constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:c];
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutAnchor *)anchor constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationLessThanOrEqual toItem:anchor.item attribute:anchor.attribute multiplier:1 constant:c];
}

@end

//

@implementation ABLayoutXAxisAnchor

@end

@implementation ABLayoutYAxisAnchor

@end

//

@implementation ABLayoutDimension

/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:c];
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:c];
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:c];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:0];
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:0];
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:0];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:c];
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:c];
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(ABLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [NSLayoutConstraint constraintWithItem:self.item attribute:self.attribute relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:m constant:c];
}

@end
