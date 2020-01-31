//
//  MovieCollectionViewCell.m
//  MovieDB
//
//  Created by tri on 1/26/20..
//  Copyright © 2020 Tri. All rights reserved.
//

#import "MovieCollectionViewCell.h"
#import "Movie.h"

@implementation MovieCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.layer.shadowColor   = [UIColor grayColor].CGColor;
    self.layer.shadowOffset  = CGSizeMake(2, 2);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 5.0;
    self.layer.masksToBounds = NO;
}

- (void)bindData:(Movie *)movie {
    if (movie == nil) {
        return;
    }
    
    _labelTitle.text = movie.title;
    
    NSURL *url = [NSURL URLWithString:movie.posterPath];
    [_imageVIew sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"1"]];
}

@end
