//
//  PlayingCard.m
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if (otherCards.count ==1) {
        id otherCard = [otherCards lastObject];
        if ([otherCard isKindOfClass:[PlayingCard class]])    {
        PlayingCard *otherCard = [otherCards lastObject];
        if([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        } else if (otherCard.rank == self.rank){
            score = 4;
        }   
    }
}

    return score;
}

-(NSString *)contents
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    static NSArray *validSuits = nil;
    if(!validSuits) validSuits = @[@"♥",@"♦", @"♠",@"♣"];
    return validSuits;
}

-(void)setSuit:(NSString *)suit

{
    if([[PlayingCard validSuits] containsObject:suit])    {
        _suit = suit;
    }
}

- (NSString *)suit

{
    return _suit ? _suit : @"?";
}

+ (NSUInteger) maxRank { return [self rankStrings].count-1;}


+ (NSArray *)rankStrings
{
    static NSArray *rankStrings = nil;
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    return rankStrings;
}

@end
