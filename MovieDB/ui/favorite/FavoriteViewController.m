//
//  FavoriteViewController.m
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "FavoriteViewController.h"
#import "MovieTableViewCell.h"
#import "Movie.h"
#import "MovieDetailViewController.h"

@interface FavoriteViewController ()

@end

@implementation FavoriteViewController

static NSString * const reuseIdentifier = @"MovieTableViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _movieList = [[NSMutableArray alloc] init];
    [_movieList addObjectsFromArray:[Movie fakeData]];
    [_movieList addObjectsFromArray:[Movie fakeData]];
    
    [_movieTableView setDelegate:self];
    [_movieTableView setDataSource:self];
 
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [_movieTableView registerNib:nib forCellReuseIdentifier:reuseIdentifier];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _movieList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Movie *movie = _movieList[indexPath.row];
    
    [cell bindData:(Movie *)movie];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Movie *movie = [_movieList objectAtIndex:indexPath.row];
    
    if(movie == nil) {
        return;
    }
    
    MovieDetailViewController *detailScreen = [MovieDetailViewController create:movie];
    
    [self.navigationController pushViewController:detailScreen animated:true];
}

@end
