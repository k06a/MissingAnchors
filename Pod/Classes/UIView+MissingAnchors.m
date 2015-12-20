//
//  UIView+MissingAnchors.m
//  Pods
//
//  Created by Антон Буков on 20.12.15.
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
