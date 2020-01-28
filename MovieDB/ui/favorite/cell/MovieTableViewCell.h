//
//  MovieTableViewCell.h
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@property (weak, nonatomic) IBOutlet UILabel *labelRating;

@property (weak, nonatomic) IBOutlet UILabel *labelDate;

- (void)bindData:(Movie *)movie;

@end

NS_ASSUME_NONNULL_END
