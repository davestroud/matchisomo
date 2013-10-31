//
//  PlayingCard.m
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",...,@"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}



- (void)setSuit:(NSString *)suit
{
    if ([@[@"♥️",@"♦️",@"👄",@"💔"]containsObject:suit]){
        _suit = suit;
    }
}










- (NSString *)suit
{
    return _suit ? _suit :@"?";
}

@end
