//
//  ABLayoutEdgesDimension.h
//  Pods
//
//  Created by Антон Буков on 20.12.15.
//
//

#import <Foundation/Foundation.h>

@interface ABLayoutEdgesDimension : NSObject

- (instancetype)initWithView:(UIView *)view;

/* These methods return an array of inactive constraints of the form
 thisVariable = constant.
 */
- (NSArray<NSLayoutConstraint *> *)constraintsEqualToConstant:(UIEdgeInsets)c;
- (NSArray<NSLayoutConstraint *> *)constraintsGreaterThanOrEqualToConstant:(UIEdgeInsets)c;
- (NSArray<NSLayoutConstraint *> *)constraintsLessThanOrEqualToConstant:(UIEdgeInsets)c;

@end
