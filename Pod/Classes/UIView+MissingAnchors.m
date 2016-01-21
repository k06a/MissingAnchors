//
//  UIView+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutSizeDimension.h"
#import "ABLayoutSizeDimension_Private.h"
#import "ABLayoutEdgesAnchor.h"
#import "ABLayoutEdgesAnchor_Private.h"
#import "UIView+MissingAnchors.h"

@implementation UIView (MissingAnchors)

- (ABLayoutSizeDimension *)sizeAnchor {
    return [[ABLayoutSizeDimension alloc] initWithItem:self];
}

- (ABLayoutEdgesAnchor *)edgesAnchor {
    return [[ABLayoutEdgesAnchor alloc] initWithItem:self];
}

@end
