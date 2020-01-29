//
//  Demo4ScrollViewController.m
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Demo4ScrollViewController.h"
#import "Demo4TableViewCell.h"
#import "ViewUtils.h"

@interface Demo4ScrollViewController ()

@end

@implementation Demo4ScrollViewController

static NSString * const reuseIdentifier = @"Demo4TableViewCell";

@synthesize data = _data;

+(Demo4ScrollViewController* )create{
    Demo4ScrollViewController *vc = [[Demo4ScrollViewController alloc]initWithNibName:@"Demo4ScrollViewController" bundle:nil];
    vc.hidesBottomBarWhenPushed = YES;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = NO;
    self.title = @"Demo4Scroll";
    
    _data = [[NSMutableArray alloc] init];
    for (int i = 1; i < 5 ; i++) {
        NSString *text = [NSString stringWithFormat:@"%d", i];
        [_data addObject:text];
    }
    
    [ViewUtils setStroke:self.firstLabel];
    [ViewUtils setStroke:self.secondLabel];
    [ViewUtils setStroke:self.firstButton];
    [ViewUtils setStroke:self.secondButton];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 60;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:reuseIdentifier];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Demo4TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *text = _data[indexPath.row];
    
    [cell bindData:text];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = tableView.bounds.size.height / 4;
    return height;
}
@end
