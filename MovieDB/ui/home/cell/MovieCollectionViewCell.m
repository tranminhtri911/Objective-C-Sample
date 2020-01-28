//
//  MovieCollectionViewCell.m
//  MovieDB
//
//  Created by tri on 1/26/20..
//  Copyright © 2020 Tri. All rights reserved.
//

#import "MovieCollectionViewCell.h"
#import "Movie.h"
#import <SDWebImage/SDWebImage.h>

@implementation MovieCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)bindData:(Movie *)movie {
    if (movie == nil) {
        return;
    }
    
    _labelTitle.text = movie.title;
    
    _imageVIew.layer.cornerRadius = 4;
    _imageVIew.clipsToBounds = YES;
    
    NSURL *url = [NSURL URLWithString:movie.posterPath];
    [_imageVIew sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"1"]];
}



@end
