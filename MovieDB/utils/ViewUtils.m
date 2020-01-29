//
//  ViewUtils.m
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "ViewUtils.h"
#import <UIKit/UIKit.h>

@implementation ViewUtils

+(void)setStroke:(UIView *)view {
    CGFloat borderWidth = 0.5f;
    view.frame = CGRectInset(view.frame, -borderWidth, -borderWidth);
    view.layer.borderColor = [UIColor blackColor].CGColor;
    view.layer.borderWidth = borderWidth;
}
@end
