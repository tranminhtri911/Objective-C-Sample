//
//  Demo4TableViewCell.h
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo4TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)bindData:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
