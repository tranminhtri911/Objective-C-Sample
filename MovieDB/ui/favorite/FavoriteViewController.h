//
//  FavoriteViewController.h
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface FavoriteViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *movieTableView;

@property (strong, nonatomic) NSMutableArray *movieList;

@end

NS_ASSUME_NONNULL_END
