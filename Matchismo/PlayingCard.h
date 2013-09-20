//
//  PlayingCard.h
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//


#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

@end
