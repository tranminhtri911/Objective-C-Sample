//
//  Demo4ViewController.m
//  MovieDB
//
//  Created by tri on 1/28/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Demo4ViewController.h"
#import "Demo4TableViewCell.h"

@interface Demo4ViewController ()

@end

@implementation Demo4ViewController

static NSString * const reuseIdentifier = @"Demo4TableViewCell";

@synthesize data = _data;

+(Demo4ViewController* )create{
    Demo4ViewController *vc = [[Demo4ViewController alloc]initWithNibName:@"Demo4ViewController" bundle:nil];
    vc.hidesBottomBarWhenPushed = YES;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = NO;
    
    _data = [[NSMutableArray alloc] init];
    for (int i = 1; i < 20 ; i++) {
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
    CGFloat height = tableView.bounds.size.height / 3;
    return height;
}

@end
