//
//  HomeViewController.m
//  MovieDB
//
//  Created by tri on 1/26/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "HomeViewController.h"
#import "MovieCollectionViewCell.h"
#import "MovieDetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

static NSString * const reuseIdentifier = @"MovieCollectionViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _movieList = [[NSMutableArray alloc] init];
    [_movieList addObjectsFromArray:[Movie fakeData]];
    [_movieList addObjectsFromArray:[Movie fakeData]];
    [_movieList addObjectsFromArray:[Movie fakeData]];

    [_movieCollectionVIew setDataSource:self];
    [_movieCollectionVIew setDelegate:self];
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [_movieCollectionVIew registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
}

/*
#pragma mark - Navigation
*/

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _movieList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Movie *movie = [_movieList objectAtIndex:indexPath.row];
    
    [cell bindData:(Movie *)movie];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = (collectionView.frame.size.width - 40)  / 3;
    return CGSizeMake(width, 175);
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    Movie *movie = [_movieList objectAtIndex:indexPath.row];
    
    if(movie == nil) {
        return;
    }
    
    MovieDetailViewController *detailScreen = [MovieDetailViewController create:movie];
  
    [self.navigationController pushViewController:detailScreen animated:true];
}

@end
