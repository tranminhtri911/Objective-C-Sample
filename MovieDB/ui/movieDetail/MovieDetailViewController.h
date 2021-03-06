//
//  MovieDetailViewController.h
//  MovieDB
//
//  Created by tri on 1/26/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *overview;

@property (nonatomic) BOOL isMoved;
@property (nonatomic) CGRect originFrame;

@property (strong, nonatomic) Movie *movie;

+(MovieDetailViewController *)create:(Movie *)movie;

- (instancetype)initWidthMovie:(Movie *)movie;

@end

NS_ASSUME_NONNULL_END
