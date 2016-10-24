//
//  UIView+ABLayoutAnchor.m
//  Pods
//
//  Created by Anton Bukov on 19.01.16.
//
//

#import <objc/runtime.h>

#import "ABLayoutAnchor.h"
#import "ABLayoutAnchor_Private.h"
#import "UIView+ABLayoutAnchor.h"

@implementation UIView (ABLayoutAnchor)

+ (void)load {
    if (![UIView instanceMethodForSelector:@selector(topAnchor)]) {
        SEL selectors[] = {
            @selector(ab_leadingAnchor),
            @selector(ab_trailingAnchor),
            @selector(ab_leftAnchor),
            @selector(ab_rightAnchor),
            @selector(ab_topAnchor),
            @selector(ab_bottomAnchor),
            @selector(ab_widthAnchor),
            @selector(ab_heightAnchor),
            @selector(ab_centerXAnchor),
            @selector(ab_centerYAnchor),
            @selector(ab_firstBaselineAnchor),
            @selector(ab_lastBaselineAnchor),
        };
        
        for (NSUInteger i = 0; i < sizeof(selectors)/sizeof(selectors[0]); i++) {
            SEL selector = selectors[i];
            SEL newSelector = NSSelectorFromString([NSStringFromSelector(selector) substringFromIndex:3]);
            Method method = class_getInstanceMethod(self, selector);
            IMP imp = method_getImplementation(method);
            const char *types = method_getTypeEncoding(method);
            class_addMethod(self, newSelector, imp, types);
        }
    }
}

- (ABLayoutXAxisAnchor *)ab_leadingAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeading];
}

- (ABLayoutXAxisAnchor *)ab_trailingAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTrailing];
}

- (ABLayoutXAxisAnchor *)ab_leftAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLeft];
}

- (ABLayoutXAxisAnchor *)ab_rightAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeRight];
}

- (ABLayoutYAxisAnchor *)ab_topAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeTop];
}

- (ABLayoutYAxisAnchor *)ab_bottomAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeBottom];
}

- (ABLayoutDimension *)ab_widthAnchor {
    return [[ABLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeWidth];
}

- (ABLayoutDimension *)ab_heightAnchor {
    return [[ABLayoutDimension alloc] initWithItem:self attribute:NSLayoutAttributeHeight];
}

- (ABLayoutXAxisAnchor *)ab_centerXAnchor {
    return [[ABLayoutXAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterX];
}

- (ABLayoutYAxisAnchor *)ab_centerYAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeCenterY];
}

- (ABLayoutYAxisAnchor *)ab_firstBaselineAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeFirstBaseline];
}

- (ABLayoutYAxisAnchor *)ab_lastBaselineAnchor {
    return [[ABLayoutYAxisAnchor alloc] initWithItem:self attribute:NSLayoutAttributeLastBaseline];
}

@end
