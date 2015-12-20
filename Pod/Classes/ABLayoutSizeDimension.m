//
//  ABLayoutTwoDimension.m
//  Pods
//
//  Created by Антон Буков on 20.12.15.
//
//

#import "ABLayoutSizeDimension.h"

@interface ABLayoutSizeDimension ()

@property (weak, nonatomic) UIView *view;

@end

@implementation ABLayoutSizeDimension

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        self.view = view;
    }
    return self;
}

/* These methods return a pair of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(CGSize)c {
    return @[[self.view.widthAnchor constraintEqualToConstant:c.width],
             [self.view.heightAnchor constraintEqualToConstant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(CGSize)c {
    return @[[self.view.widthAnchor constraintGreaterThanOrEqualToConstant:c.width],
             [self.view.heightAnchor constraintGreaterThanOrEqualToConstant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(CGSize)c {
    return @[[self.view.widthAnchor constraintLessThanOrEqualToConstant:c.width],
             [self.view.heightAnchor constraintLessThanOrEqualToConstant:c.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.view.widthAnchor constraintEqualToAnchor:anchor.view.widthAnchor],
             [self.view.heightAnchor constraintEqualToAnchor:anchor.view.heightAnchor]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.view.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.widthAnchor],
             [self.view.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.heightAnchor]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.view.widthAnchor constraintLessThanOrEqualToAnchor:anchor.view.widthAnchor],
             [self.view.heightAnchor constraintLessThanOrEqualToAnchor:anchor.view.heightAnchor]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintEqualToAnchor:anchor.view.widthAnchor constant:c.width],
             [self.view.heightAnchor constraintEqualToAnchor:anchor.view.heightAnchor constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.widthAnchor constant:c.width],
             [self.view.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.heightAnchor constant:c.height]];
}
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintLessThanOrEqualToAnchor:anchor.view.widthAnchor constant:c.width],
             [self.view.heightAnchor constraintLessThanOrEqualToAnchor:anchor.view.heightAnchor constant:c.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.view.widthAnchor constraintEqualToAnchor:anchor.view.widthAnchor multiplier:m.width],
             [self.view.heightAnchor constraintEqualToAnchor:anchor.view.heightAnchor multiplier:m.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.view.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.widthAnchor multiplier:m.width],
             [self.view.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.heightAnchor multiplier:m.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.view.widthAnchor constraintLessThanOrEqualToAnchor:anchor.view.widthAnchor multiplier:m.width],
             [self.view.heightAnchor constraintLessThanOrEqualToAnchor:anchor.view.heightAnchor multiplier:m.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintEqualToAnchor:anchor.view.widthAnchor multiplier:m.width constant:c.width],
             [self.view.heightAnchor constraintEqualToAnchor:anchor.view.heightAnchor multiplier:m.height constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.widthAnchor multiplier:m.width constant:c.width],
             [self.view.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.view.heightAnchor multiplier:m.height constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.view.widthAnchor constraintLessThanOrEqualToAnchor:anchor.view.widthAnchor multiplier:m.width constant:c.width],
             [self.view.heightAnchor constraintLessThanOrEqualToAnchor:anchor.view.heightAnchor multiplier:m.height constant:c.height]];
}

@end
