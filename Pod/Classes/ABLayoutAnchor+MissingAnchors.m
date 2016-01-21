//
//  ABLayoutAnchor+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 21.12.15.
//
//

#if __has_include(<MissingAnchors/ABLayoutAnchor.h>)

#import "ABLayoutEdgesAnchor.h"
#import "ABLayoutEdgesAnchor_Private.h"
#import "ABLayoutAnchor_Private.h"
#import "ABLayoutAnchor+MissingAnchors.h"

static ABLayoutEdgesAttribute edgeByAttribute(NSLayoutAttribute attribute) {
    static NSDictionary<NSNumber *,NSNumber *> *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
            @(NSLayoutAttributeTop):      @(ABLayoutEdgesAttributeTop),
            @(NSLayoutAttributeBottom):   @(ABLayoutEdgesAttributeBottom),
            @(NSLayoutAttributeLeading):  @(ABLayoutEdgesAttributeLeading),
            @(NSLayoutAttributeTrailing): @(ABLayoutEdgesAttributeTrailing),
            @(NSLayoutAttributeLeft):     @(ABLayoutEdgesAttributeLeading),
            @(NSLayoutAttributeRight):    @(ABLayoutEdgesAttributeTrailing),
        };
    });
    return dict[@(attribute)].unsignedIntegerValue;
}

//

@implementation ABLayoutAnchor (MissingAnchors)

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

#endif
