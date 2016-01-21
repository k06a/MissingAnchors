//
//  ABLayoutAnchor_Private.h
//  Pods
//
//  Created by Anton Bukov on 21.01.16.
//
//

#import "ABLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABLayoutAnchor (Private)

@property (strong, nonatomic) UIView *item;
@property (assign, nonatomic) NSLayoutAttribute attribute;

- (instancetype)initWithItem:(UIView *)item attribute:(NSLayoutAttribute)attr;

@end

NS_ASSUME_NONNULL_END
