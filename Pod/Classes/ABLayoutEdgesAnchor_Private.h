//
//  ABLayoutEdgesAnchor_Private.h
//  MissingAnchors
//
//  Created by Anton Bukov on 22.12.15.
//
//

#import "ABLayoutEdgesAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABLayoutEdgesAnchor (Private)

@property (strong, nonatomic) UIView *item;
@property (assign, nonatomic) NSLayoutAttribute attribute;

- (instancetype)initWithItem:(UIView *)view;
- (instancetype)initWithItem:(UIView *)view attribute:(ABLayoutEdgesAttribute)attribute;

@end

NS_ASSUME_NONNULL_END
