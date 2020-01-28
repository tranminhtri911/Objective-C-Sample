//
//  MovieCollectionViewCell.h
//  MovieDB
//
//  Created by Tri on 2020/01/26.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageVIew;

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

- (void)bindData:(Movie *)movie;

@end

NS_ASSUME_NONNULL_END
