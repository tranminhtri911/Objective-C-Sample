//
//  Demo5ScrollViewController.h
//  MovieDB
//
//  Created by tri on 1/29/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo5ScrollViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
    NSMutableArray *data;
    CGFloat spacing;
}

@property (weak, nonatomic) IBOutlet UICollectionView *horizontalCollectionVIew;

@property (weak, nonatomic) IBOutlet UICollectionView *verticalCollectionView;

@property (strong, nonatomic) NSMutableArray *data;

@property (nonatomic) CGFloat spacing;

@end

NS_ASSUME_NONNULL_END
