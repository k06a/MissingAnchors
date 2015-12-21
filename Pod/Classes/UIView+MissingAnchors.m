//
//  UIView+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutSizeDimension.h"
#import "ABLayoutEdgesAnchor.h"
#import "UIView+MissingAnchors.h"

@implementation UIView (MissingAnchors)

- (ABLayoutSizeDimension *)sizeAnchor {
    return [[ABLayoutSizeDimension alloc] initWithView:self];
}

- (ABLayoutEdgesAnchor *)edgesAnchor {
    return [[ABLayoutEdgesAnchor alloc] initWithView:self];
}

@end
