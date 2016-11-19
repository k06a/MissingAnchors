//
//  ABLayoutEdgesAnchor.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutEdgesAnchor.h"

//

static NSArray *ArrayWithoutNulls(NSArray *arr) {
    return [arr filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nonnull evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
        return evaluatedObject != [NSNull null];
    }]];
}

//

@interface ABLayoutEdgesAnchor ()

@property (strong, nonatomic) UIView *item;
@property (assign, nonatomic) ABLayoutEdgesAttribute attribute;

@end


@implementation ABLayoutEdgesAnchor

- (instancetype)initWithItem:(UIView *)view {
    return [self initWithItem:view attribute:ABLayoutEdgesAttributeAll];
}

- (instancetype)initWithItem:(UIView *)item attribute:(ABLayoutEdgesAttribute)attribute {
    if (self = [super init]) {
        self.item = item;
        self.attribute = attribute;
    }
    return self;
}

- (ABLayoutEdgesAnchor *)withTopAnchor {
    ABLayoutEdgesAttribute edges = self.attribute | ABLayoutEdgesAttributeTop;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withBottomAnchor {
    ABLayoutEdgesAttribute edges = self.attribute | ABLayoutEdgesAttributeBottom;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withLeadingAnchor {
    ABLayoutEdgesAttribute edges = self.attribute | ABLayoutEdgesAttributeLeading;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withTrailingAnchor {
    ABLayoutEdgesAttribute edges = self.attribute | ABLayoutEdgesAttributeTrailing;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withoutTopAnchor {
    ABLayoutEdgesAttribute edges = self.attribute & ~ABLayoutEdgesAttributeTop;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withoutBottomAnchor {
    ABLayoutEdgesAttribute edges = self.attribute & ~ABLayoutEdgesAttributeBottom;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withoutLeadingAnchor {
    ABLayoutEdgesAttribute edges = self.attribute & ~ABLayoutEdgesAttributeLeading;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withoutTrailingAnchor {
    ABLayoutEdgesAttribute edges = self.attribute & ~ABLayoutEdgesAttributeTrailing;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

/* These methods return an array of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c {
    return [self constraintsEqualToView:self.item.superview constant:c];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c {
    return [self constraintsGreaterThanOrEqualToView:self.item.superview constant:c];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c {
    return [self constraintsLessThanOrEqualToView:self.item.superview constant:c];
}


/* These methods return an array of inactive constraints of the form
 thisVariable = view + constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToView:(UIView *)view constant:(UIEdgeInsets)c {
    [self assertSuperviewNotNil];
    return ArrayWithoutNulls(@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintEqualToAnchor:view.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:-c.right] : [NSNull null],
    ]);
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToView:(UIView *)view constant:(UIEdgeInsets)c {
    [self assertSuperviewNotNil];
    return ArrayWithoutNulls(@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintLessThanOrEqualToAnchor:view.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintGreaterThanOrEqualToAnchor:view.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintLessThanOrEqualToAnchor:view.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintGreaterThanOrEqualToAnchor:view.trailingAnchor constant:-c.right] : [NSNull null],
    ]);
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToView:(UIView *)view constant:(UIEdgeInsets)c {
    [self assertSuperviewNotNil];
    return ArrayWithoutNulls(@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintGreaterThanOrEqualToAnchor:view.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintLessThanOrEqualToAnchor:view.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintGreaterThanOrEqualToAnchor:view.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintLessThanOrEqualToAnchor:view.trailingAnchor constant:-c.right] : [NSNull null],
    ]);
}

- (void)assertSuperviewNotNil {
    NSAssert(self.item.superview, @"View's superview must not be nil.\nView: %@", self.item);
}

@end
