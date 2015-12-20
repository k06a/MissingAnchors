//
//  UIView+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import "ABLayoutSizeDimension.h"
#import "ABLayoutEdgesDimension.h"
#import "UIView+MissingAnchors.h"

@implementation UIView (MissingAnchors)

- (ABLayoutSizeDimension *)sizeAnchor {
    return [[ABLayoutSizeDimension alloc] initWithView:self];
}

- (ABLayoutEdgesDimension *)edgesAnchor {
    return [[ABLayoutEdgesDimension alloc] initWithView:self];
}

@end
