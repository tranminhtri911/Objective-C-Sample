//
//  UIView+Extension.m
//  MovieDB
//
//  Created by tri on 1/29/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setBorderColor:(UIColor *)borderColor{
    [self.layer setBorderColor:borderColor.CGColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    [self.layer setBorderWidth:borderWidth];
}

- (void)setCornerRadius:(CGFloat)cornerRadius{
    [self.layer setCornerRadius:cornerRadius];
}

@end
