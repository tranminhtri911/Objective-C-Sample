//
//  MovieTableViewCell.m
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "MovieTableViewCell.h"
#import "Movie.h"
#import <SDWebImage/SDWebImage.h>

@implementation MovieTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindData:(Movie *)movie {
    if (movie == nil) {
        return;
    }
    
    _labelTitle.text = movie.title;
    _labelRating.text = movie.voteAverage;
    _labelDate.text = movie.releaseDate;
    
    NSURL *url = [NSURL URLWithString:movie.posterPath];
    [_image sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"1"]];
}


@end
