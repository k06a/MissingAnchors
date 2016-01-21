//
//  NSLayoutAnchor+Private.h
//  Pods
//
//  Created by Anton Bukov on 21.01.16.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSLayoutAnchor (MissingAnchors_Private)

@property (readonly, strong, nonatomic) UIView *item;
@property (readonly, assign, nonatomic) NSLayoutAttribute attribute;

@end

NS_ASSUME_NONNULL_END
