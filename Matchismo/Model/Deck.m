//
//  Deck.m
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; // of card

@end

@implemenation Deck

- (NSMutableArray *)cards
{
    return _cards;
}






- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    
    if (atTop)  {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard {}

@end


