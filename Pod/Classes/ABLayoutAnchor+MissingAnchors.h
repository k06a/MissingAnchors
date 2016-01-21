//
//  ABLayoutAnchor+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 21.12.15.
//
//

#if __has_include(<MissingAnchors/ABLayoutAnchor.h>)

#import "ABLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@class ABLayoutEdgesAnchor;

@interface ABLayoutAnchor (MissingAnchors)

@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTopAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withBottomAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withLeadingAnchor;
@property (readonly, nonatomic) ABLayoutEdgesAnchor *withTrailingAnchor;

@end

NS_ASSUME_NONNULL_END

#endif