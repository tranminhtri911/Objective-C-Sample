//
//  Demo5CollectionViewCell.m
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Demo5CollectionViewCell.h"

@implementation Demo5CollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    CGFloat borderWidth = 0.5f;
    
    self.frame = CGRectInset(self.frame, -borderWidth, -borderWidth);
    self.layer.borderColor = [UIColor blackColor].CGColor;
    self.layer.borderWidth = borderWidth;
}

- (void)bindData:(NSString *)text {
    _label.text = text;
}

- (void)setContentSize:(CGSize *)size {
   
}


@end
