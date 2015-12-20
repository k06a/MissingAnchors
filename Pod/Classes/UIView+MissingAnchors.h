//
//  UIView+MissingAnchors.h
//  Pods
//
//  Created by Антон Буков on 20.12.15.
//
//

#import <UIKit/UIKit.h>

@class ABLayoutSizeDimension;
@class ABLayoutEdgesDimension;

@interface UIView (MissingAnchors)

@property(readonly, strong) ABLayoutSizeDimension *sizeAnchor;
@property(readonly, strong) ABLayoutEdgesDimension *edgesAnchor;

@end
