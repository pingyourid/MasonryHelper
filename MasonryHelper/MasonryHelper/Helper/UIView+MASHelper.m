//
//  UIView+MASHelper.m
//  CommonLib
//
//  Created by bibibi on 15/7/27.
//  Copyright (c) 2015年 bibibi. All rights reserved.
//

#import "UIView+MASHelper.h"

@implementation UIView (MASHelper)

- (UIView *)hj_commonSuperviewWithView:(UIView *)otherView
{
    UIView *commonSuperview = nil;
    UIView *startView = self;
    do {
#if TARGET_OS_IPHONE
        if ([otherView isDescendantOfView:startView]) {
            commonSuperview = startView;
        }
#else
        if ([otherView isDescendantOf:startView]) {
            commonSuperview = startView;
        }
#endif /* TARGET_OS_IPHONE */
        startView = startView.superview;
    } while (startView && !commonSuperview);
    NSAssert(commonSuperview, @"Can't constrain two views that do not share a common superview. Make sure that both views have been added into the same view hierarchy.");
    return commonSuperview;
}

@end
