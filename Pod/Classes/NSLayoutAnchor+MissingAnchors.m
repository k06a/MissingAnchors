//
//  NSLayoutAnchor+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 21.12.15.
//
//

#import "ABLayoutEdgesAnchor.h"
#import "ABLayoutEdgesAnchor_Private.h"
#import "NSLayoutAnchor+MissingAnchors.h"

ABLayoutEdgesAttribute edgeByAttribute(NSLayoutAttribute attribute) {
    static NSDictionary<NSNumber *,NSNumber *> *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
            @(NSLayoutAttributeTop): @(ABLayoutEdgesAttributeTop),
            @(NSLayoutAttributeBottom): @(ABLayoutEdgesAttributeBottom),
            @(NSLayoutAttributeLeading): @(ABLayoutEdgesAttributeLeading),
            @(NSLayoutAttributeTrailing): @(ABLayoutEdgesAttributeTrailing),
            @(NSLayoutAttributeLeft): @(ABLayoutEdgesAttributeLeading),
            @(NSLayoutAttributeRight): @(ABLayoutEdgesAttributeTrailing),
        };
    });
    return dict[@(attribute)].unsignedIntegerValue;
}

//


@interface NSLayoutAnchor (MissingAnchors_Private)

@property (strong, nonatomic) UIView *item;
@property (assign, nonatomic) NSLayoutAttribute attribute;

@end


@implementation NSLayoutAnchor (MissingAnchors_Private)

@dynamic item;
@dynamic attribute;

@end

//

@implementation NSLayoutAnchor (MissingAnchors)

- (ABLayoutEdgesAnchor *)withTopAnchor {
    ABLayoutEdgesAttribute edges = edgeByAttribute(self.attribute) | ABLayoutEdgesAttributeTop;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withBottomAnchor {
    ABLayoutEdgesAttribute edges = edgeByAttribute(self.attribute) | ABLayoutEdgesAttributeBottom;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withLeadingAnchor {
    ABLayoutEdgesAttribute edges = edgeByAttribute(self.attribute) | ABLayoutEdgesAttributeLeading;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

- (ABLayoutEdgesAnchor *)withTrailingAnchor {
    ABLayoutEdgesAttribute edges = edgeByAttribute(self.attribute) | ABLayoutEdgesAttributeTrailing;
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self.item attribute:edges];
}

@end
