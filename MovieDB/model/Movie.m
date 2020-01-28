//
//  Movie.m
//  MovieDB
//
//  Created by tri on 1/26/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "Movie.h"

@interface Movie ()

@end

@implementation Movie

+(NSMutableArray* )fakeData {
    
    NSMutableArray * movieList = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 6; i ++) {
        Movie *movie = [[Movie alloc] init];
        
        if(i == 0) {
            movie.title = @"Ad Astra";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg";
        }
        
        if(i == 1) {
            movie.title = @"Bad Boys for Life";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/y95lQLnuNKdPAzw9F9Ab8kJ80c3.jpg";
        }
        
        if(i == 2) {
            movie.title = @"1917";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/AuGiPiGMYMkSosOJ3BQjDEAiwtO.jpg";
        }
        
        if(i == 3) {
            movie.title = @"Joker";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg";
        }
        
        if(i == 4) {
            movie.title = @"Terminator: Dark Fate";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/vqzNJRH4YyquRiWxCCOH0aXggHI.jpg";
        }
        
        if(i == 5) {
            movie.title = @"Star Wars: The Rise of Skywalker";
            movie.posterPath = @"https://image.tmdb.org/t/p/w185/db32LaOibwEliAmSL2jjDF6oDdj.jpg";
        }
        
        movie.releaseDate = @"Jan 14, 2020";
        movie.voteAverage = @"7.0/10";
        movie.overview = @"The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown. Los Angeles, 1969. TV star Rick Dalton, a struggling actor specializing in westerns, and stuntman Cliff Booth, his best friend, try to survive in a constantly changing movie industry. Dalton is the neighbor of the young and promising actress and model Sharon Tate.";
        
        [movieList addObject:movie];
    }
    return movieList;
}
    
@end
