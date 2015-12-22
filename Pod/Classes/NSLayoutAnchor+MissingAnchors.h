//
//  NSLayoutAnchor+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 21.12.15.
//
//

#import <UIKit/UIKit.h>

@class ABLayoutEdgesAnchor;

@interface NSLayoutAnchor (MissingAnchors)

@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTopAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withBottomAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withLeadingAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTrailingAnchor;

@end
