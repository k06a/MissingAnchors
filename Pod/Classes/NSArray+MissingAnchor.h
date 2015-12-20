//
//  ABLayoutAnchor.h
//  Pods
//
//  Created by Антон Буков on 20.12.15.
//
//

#import <UIKit/UIKit.h>

@interface NSArray (MissingAnchors)

@property (assign, nonatomic) BOOL active;

- (NSArray *)flatten;

@end
