//
//  Demo5ViewController.h
//  MovieDB
//
//  Created by tri on 1/27/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo5ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *horizontalCollectionVIew;

@property (weak, nonatomic) IBOutlet UICollectionView *verticalCollectionView;

@property (strong, nonatomic) NSMutableArray *data;

@end

NS_ASSUME_NONNULL_END
