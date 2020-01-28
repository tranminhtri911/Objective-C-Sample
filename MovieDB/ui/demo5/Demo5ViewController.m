//
//  Demo5ViewController.m
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Demo5ViewController.h"
#import "Movie.h"
#import "Demo5CollectionViewCell.h"

@interface Demo5ViewController ()

@end

@implementation Demo5ViewController

static NSString * const reuseIdentifier = @"Demo5CollectionViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
    
    _data = [[NSMutableArray alloc] init];
    for (int i = 0; i < 20 ; i++) {
        NSString *text = [NSString stringWithFormat:@"%d", i];
        [_data addObject:text];
    }
    
    [_horizontalCollectionVIew setDataSource:self];
    [_horizontalCollectionVIew setDelegate:self];
    
    [_verticalCollectionView setDataSource:self];
    [_verticalCollectionView setDelegate:self];
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [_horizontalCollectionVIew registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    [_verticalCollectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
}

/*
#pragma mark - Navigation
*/

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Demo5CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *text = [_data objectAtIndex:indexPath.row];
    
    [cell bindData:(NSString *)text];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width;
    CGFloat height;
    if (collectionView == _horizontalCollectionVIew) {
        width = collectionView.bounds.size.width / 4;
        height = collectionView.bounds.size.height;
    }else {
        int row = 3;
        CGFloat spacing = [self getSpacing];
        CGFloat totalSpacing = spacing * (row + 1);
        width = (collectionView.bounds.size.width - totalSpacing)  / row;
        height = (collectionView.bounds.size.height - totalSpacing)  / row;
    }
    return CGSizeMake(width, height);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    if (collectionView == _horizontalCollectionVIew) {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
    CGFloat spacing = [self getSpacing];
    return UIEdgeInsetsMake(spacing, spacing, spacing, spacing);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    if (collectionView == _horizontalCollectionVIew) {
        return 0;
    }
    return [self getSpacing];
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    if (collectionView == _horizontalCollectionVIew) {
        return 0;
    }
    return [self getSpacing] / 2;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (CGFloat)getSpacing {
    return [UIScreen mainScreen].bounds.size.width / 9;
}

@end
