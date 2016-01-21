//
//  NSArray+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (MissingAnchors)

@property (assign, nonatomic) BOOL active;

- (NSArray *)flatten;

@end

NS_ASSUME_NONNULL_END
