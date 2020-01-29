//
//  Demo4TableViewCell.m
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Demo4TableViewCell.h"
#import "ViewUtils.h"

@implementation Demo4TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [ViewUtils setStroke:self];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindData:(NSString *)text {
    self.titleLabel.text = text;
}

@end
