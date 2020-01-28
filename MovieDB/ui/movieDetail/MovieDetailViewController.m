//
//  MovieDetailViewController.m
//  MovieDB
//
//  Created by tri on 1/26/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "Movie.h"
#import <SDWebImage/SDWebImage.h>

@interface MovieDetailViewController ()

@end

@implementation MovieDetailViewController

+(MovieDetailViewController* )create:(Movie *) movie {
    MovieDetailViewController *vc = [[MovieDetailViewController alloc]initWithNibName:@"MovieDetailViewController" bundle:nil];
    vc.movie = movie;
    vc.hidesBottomBarWhenPushed = YES;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isMoved = NO;
    self.originFrame = self.image.frame;

    [self.navigationController setNavigationBarHidden:NO];
    self.title = @"Movie Detail";
    
    _labelTitle.text = _movie.title;
    _rating.text = _movie.voteAverage;
    _date.text = _movie.releaseDate;
    _overview.text = _movie.overview;
    _image.layer.cornerRadius = 4;

    NSURL *url = [NSURL URLWithString:_movie.posterPath];
    [_image sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"1"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onTapButton:(id)sender {
    if(_isMoved) {
        [UIView animateWithDuration:0.5f animations:^{
            self.image.frame = self.originFrame;
        }];
    }
    else {
        [UIView animateWithDuration:0.5f animations:^{
            CGFloat x = self.originFrame.origin.x + 100;
            CGFloat y = self.originFrame.origin.y;
            CGFloat width = self.originFrame.size.width;
            CGFloat height = self.originFrame.size.height;
            self.image.frame = CGRectMake(x, y , width, height);
        }];
    }
    
    self.isMoved = !self.isMoved;
}

@end
