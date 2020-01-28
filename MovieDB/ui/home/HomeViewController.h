//
//  HomeViewController.h
//  MovieDB
//
//  Created by tri on 1/26/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *movieCollectionVIew;

@property (strong, nonatomic) NSMutableArray *movieList;

@end

NS_ASSUME_NONNULL_END
