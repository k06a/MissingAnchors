//
//  ABLayoutSizeDimension_Private.h
//  Pods
//
//  Created by Anton Bukov on 21.01.16.
//
//

#import "ABLayoutSizeDimension.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABLayoutSizeDimension (Private)

@property (strong, nonatomic) UIView *item;

- (instancetype)initWithItem:(UIView *)item;

@end

NS_ASSUME_NONNULL_END
