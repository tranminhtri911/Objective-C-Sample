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
#import "Demo4ViewController.h"

@interface Demo5ViewController ()

@end

@implementation Demo5ViewController

static NSString * const reuseIdentifier = @"Demo5CollectionViewCell";

@synthesize spacing = _spacing;
@synthesize data = _data;

- (void) viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _data = [[NSMutableArray alloc] init];
    for (int i = 1; i < 20 ; i++) {
        NSString *text = [NSString stringWithFormat:@"%d", i];
        [_data addObject:text];
    }
    
    [self.horizontalCollectionVIew setDataSource:self];
    [self.horizontalCollectionVIew setDelegate:self];
    
    [self.verticalCollectionView setDataSource:self];
    [self.verticalCollectionView setDelegate:self];
    
    [self setSpacing:[self canculatorSpacing]];
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [self.horizontalCollectionVIew registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    [self.verticalCollectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:[UIDevice currentDevice]];
}

- (void) orientationChanged:(NSNotification *)note {
    [self setSpacing:[self canculatorSpacing]];
    [self.verticalCollectionView reloadData];
    [self.horizontalCollectionVIew reloadData];
}

/*
 #pragma mark - Navigation
 */

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Demo5CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *text = [self.data objectAtIndex:indexPath.row];
    
    [cell bindData:(NSString *)text];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width;
    CGFloat height;
    if (collectionView == self.horizontalCollectionVIew) {
        width = collectionView.bounds.size.width / 4;
        height = collectionView.bounds.size.height;
    }else {
        int row = 3;
        CGFloat totalSpacing =  [self canculatorSpacing] * (row + 1);
        width = (collectionView.bounds.size.width - totalSpacing)  / row;
        height = (collectionView.bounds.size.height - totalSpacing)  / row;
    }
    return CGSizeMake(width, height);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    if (collectionView == _horizontalCollectionVIew) {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
    CGFloat spacing =  [self canculatorSpacing];
    return UIEdgeInsetsMake(spacing, spacing, spacing, spacing);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    if (collectionView == self.horizontalCollectionVIew) {
        return 0;
    }
    return  [self canculatorSpacing];
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    if (collectionView == self.horizontalCollectionVIew) {
        return 0;
    }
    return [self canculatorSpacing] / 2;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self pushToDemo4VC];
}

- (CGFloat)canculatorSpacing {
    CGFloat spacing;
    CGFloat heightUIScreen = [UIScreen mainScreen].bounds.size.height;
    CGFloat widthMainScreen = [UIScreen mainScreen].bounds.size.width;
    // Portrait
    if (heightUIScreen > widthMainScreen) {
        spacing = widthMainScreen / 9;
    } else {
        spacing = self.verticalCollectionView.bounds.size.height / 9;
    }
    return spacing;
}

- (IBAction)onTapDemo4:(id)sender {
    [self pushToDemo4VC];
}

- (void) pushToDemo4VC {
    Demo4ViewController *vc = [Demo4ViewController create];
    [self.navigationController pushViewController:vc animated:true];
}

@end
