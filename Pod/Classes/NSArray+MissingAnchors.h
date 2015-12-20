//
//  NSArray+MissingAnchors.h
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//
//

#import <UIKit/UIKit.h>

@interface NSArray (MissingAnchors)

@property (assign, nonatomic) BOOL active;

- (NSArray *)flatten;

@end
