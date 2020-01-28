//
//  Demo5CollectionViewCell.h
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo5CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *viewContent;

@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)bindData:(NSString *)text;

- (void)setContentSize:(CGSize *)size;

@end

NS_ASSUME_NONNULL_END
