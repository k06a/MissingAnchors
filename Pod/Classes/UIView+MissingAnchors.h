//
//  UIView+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ABLayoutSizeDimension;
@class ABLayoutEdgesAnchor;

@interface UIView (MissingAnchors)

@property(readonly, strong) ABLayoutSizeDimension *sizeAnchor;
@property(readonly, strong) ABLayoutEdgesAnchor *edgesAnchor;

@end

NS_ASSUME_NONNULL_END
