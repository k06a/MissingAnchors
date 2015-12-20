//
//  UIView+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <UIKit/UIKit.h>

@class ABLayoutSizeDimension;
@class ABLayoutEdgesDimension;

@interface UIView (MissingAnchors)

@property(readonly, strong) ABLayoutSizeDimension *sizeAnchor;
@property(readonly, strong) ABLayoutEdgesDimension *edgesAnchor;

@end
