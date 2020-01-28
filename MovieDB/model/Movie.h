//
//  Movie.h
//  MovieDB
//
//  Created by tri on 1/26/20.3.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject

@property (nonatomic) NSString *posterPath;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString* overview;
@property (nonatomic) NSString* releaseDate;
@property (nonatomic) NSString* voteAverage;

+(NSMutableArray *)fakeData;

@end

NS_ASSUME_NONNULL_END
