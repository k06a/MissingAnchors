//
//  ABLayoutEdgesAnchor.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutEdgesAnchor.h"

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

+ (NSArray *)arrayWithoutNulls:(NSArray *)arr {
    return [arr filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nonnull evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
        return evaluatedObject != [NSNull null];
    }]];
}

/* These methods return an array of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c {
    return [self.class arrayWithoutNulls:@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintEqualToAnchor:self.item.superview.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintEqualToAnchor:self.item.superview.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintEqualToAnchor:self.item.superview.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintEqualToAnchor:self.item.superview.trailingAnchor constant:-c.right] : [NSNull null],
    ]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c {
    return [self.class arrayWithoutNulls:@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintGreaterThanOrEqualToAnchor:self.item.superview.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintLessThanOrEqualToAnchor:self.item.superview.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintGreaterThanOrEqualToAnchor:self.item.superview.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintLessThanOrEqualToAnchor:self.item.superview.trailingAnchor constant:-c.right] : [NSNull null],
    ]];
}

- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c {
    return [self.class arrayWithoutNulls:@[
        (self.attribute & ABLayoutEdgesAttributeTop) ? [self.item.topAnchor constraintLessThanOrEqualToAnchor:self.item.superview.topAnchor constant:c.top] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeBottom) ? [self.item.bottomAnchor constraintGreaterThanOrEqualToAnchor:self.item.superview.bottomAnchor constant:-c.bottom] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeLeading) ? [self.item.leadingAnchor constraintLessThanOrEqualToAnchor:self.item.superview.leadingAnchor constant:c.left] : [NSNull null],
        (self.attribute & ABLayoutEdgesAttributeTrailing) ? [self.item.trailingAnchor constraintGreaterThanOrEqualToAnchor:self.item.superview.trailingAnchor constant:-c.right] : [NSNull null],
    ]];
}

@end
