//
//  Demo4ViewController.h
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewUtils.h"

NS_ASSUME_NONNULL_BEGIN

@interface Demo4ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray *data;
}

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;

@property (strong, nonatomic) NSMutableArray* data;

+(Demo4ViewController* )create;

@end

NS_ASSUME_NONNULL_END
