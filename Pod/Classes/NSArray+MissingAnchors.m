//
//  NSArray+MissingAnchors.m
//  MissingAnchors
//
//  Created by Anton Bukov on 20.12.15.
//

#import "NSArray+MissingAnchors.h"

@implementation NSArray (MissingAnchors)

- (BOOL)active {
    for (id object in self) {
        if (![object active]) {
            return NO;
        }
    }
    return YES;
}

- (void)setActive:(BOOL)active {
    for (id object in self) {
        [object setActive:active];
    }
}

- (NSArray *)flatten {
    BOOL shouldWork = ^{
        for (id object in self)
            if ([object respondsToSelector:@selector(flatten)])
                return YES;
        return NO;
    }();
    
    if (!shouldWork) {
        return self;
    }
    
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:self.count];
    for (id object in self) {
        if ([object respondsToSelector:@selector(flatten)]) {
            [arr addObjectsFromArray:[object flatten]];
        } else {
            [arr addObject:object];
        }
    }
    
    return arr;
}

@end
