//
//  NSLayoutAnchor_Private.m
//  Pods
//
//  Created by Anton Bukov on 20.06.16.
//
//

#import <objc/runtime.h>

#import "NSLayoutAnchor_Private.h"

@implementation NSLayoutAnchor (MissingAnchors_Private)

@dynamic item;
@dynamic attribute;

+ (void)load {
    if (![self instancesRespondToSelector:@selector(attribute)]) {
        Method method = class_getInstanceMethod([self class], @selector(ma_attribute));
        IMP imp = method_getImplementation(method);
        const char *types = method_getTypeEncoding(method);
        class_addMethod([self class], @selector(attribute), imp, types);
    }
}

- (NSLayoutAttribute)ma_attribute {
    return [[self valueForKey:@"_attr"] integerValue];
}

@end
