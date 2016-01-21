//
//  ABLayoutSizeDimension.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutSizeDimension.h"

@interface ABLayoutSizeDimension ()

@property (strong, nonatomic) UIView *item;

@end


@implementation ABLayoutSizeDimension

- (instancetype)initWithItem:(UIView *)item {
    if (self = [super init]) {
        self.item = item;
    }
    return self;
}

/* These methods return a pair of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(CGSize)c {
    return @[[self.item.widthAnchor constraintEqualToConstant:c.width],
             [self.item.heightAnchor constraintEqualToConstant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(CGSize)c {
    return @[[self.item.widthAnchor constraintGreaterThanOrEqualToConstant:c.width],
             [self.item.heightAnchor constraintGreaterThanOrEqualToConstant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(CGSize)c {
    return @[[self.item.widthAnchor constraintLessThanOrEqualToConstant:c.width],
             [self.item.heightAnchor constraintLessThanOrEqualToConstant:c.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.item.widthAnchor constraintEqualToAnchor:anchor.item.widthAnchor],
             [self.item.heightAnchor constraintEqualToAnchor:anchor.item.heightAnchor]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.item.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.widthAnchor],
             [self.item.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.heightAnchor]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor {
    return @[[self.item.widthAnchor constraintLessThanOrEqualToAnchor:anchor.item.widthAnchor],
             [self.item.heightAnchor constraintLessThanOrEqualToAnchor:anchor.item.heightAnchor]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintEqualToAnchor:anchor.item.widthAnchor constant:c.width],
             [self.item.heightAnchor constraintEqualToAnchor:anchor.item.heightAnchor constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.widthAnchor constant:c.width],
             [self.item.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.heightAnchor constant:c.height]];
}
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintLessThanOrEqualToAnchor:anchor.item.widthAnchor constant:c.width],
             [self.item.heightAnchor constraintLessThanOrEqualToAnchor:anchor.item.heightAnchor constant:c.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.item.widthAnchor constraintEqualToAnchor:anchor.item.widthAnchor multiplier:m.width],
             [self.item.heightAnchor constraintEqualToAnchor:anchor.item.heightAnchor multiplier:m.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.item.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.widthAnchor multiplier:m.width],
             [self.item.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.heightAnchor multiplier:m.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m {
    return @[[self.item.widthAnchor constraintLessThanOrEqualToAnchor:anchor.item.widthAnchor multiplier:m.width],
             [self.item.heightAnchor constraintLessThanOrEqualToAnchor:anchor.item.heightAnchor multiplier:m.height]];
}

/* These methods return a pair of inactive constraints of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintEqualToAnchor:anchor.item.widthAnchor multiplier:m.width constant:c.width],
             [self.item.heightAnchor constraintEqualToAnchor:anchor.item.heightAnchor multiplier:m.height constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.widthAnchor multiplier:m.width constant:c.width],
             [self.item.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor.item.heightAnchor multiplier:m.height constant:c.height]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToAnchor:(ABLayoutSizeDimension *)anchor multiplier:(CGSize)m constant:(CGSize)c {
    return @[[self.item.widthAnchor constraintLessThanOrEqualToAnchor:anchor.item.widthAnchor multiplier:m.width constant:c.width],
             [self.item.heightAnchor constraintLessThanOrEqualToAnchor:anchor.item.heightAnchor multiplier:m.height constant:c.height]];
}

@end
