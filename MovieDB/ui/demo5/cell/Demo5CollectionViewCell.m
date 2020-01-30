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
}

- (void)bindData:(NSString *)text {
    self.titleLabel.text = text;
}

- (void)setContentSize:(CGSize *)size {
   
}


@end
