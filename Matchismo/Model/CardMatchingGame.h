//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by DAVID STROUD on 9/5/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (id)initWithCardCount:(NSUInteger)cardCount
             usingDeck:(Deck*)deck;

- (void)flipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) int score;


@end
