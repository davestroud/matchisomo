//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by DAVID STROUD on 9/5/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (strong, nonatomic) NSMutableArray *cards; // of Card
@property (readwrite, nonatomic) int score;
@end

@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if(!_cards)_cards = [[NSMutableArray alloc]init];
    return _cards;
}

- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if(!card)   {
                self = nil;
            } else {
                self.cards[i] = card;
            }
        }
    }
    
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < self.cards.count) ? self.cards[index] :nil;
}


#define FLIP_COST 1
#define MISMATCH_PENALTY 2
#define MATCH_BONUS 4

- (void)flipCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    
    if (!card.isUnplayable) {
        if(!card.isFaceup)  {
            for (Card *otherCard in self.cards) {
                if (otherCard.isFaceup && !otherCard.isUnplayable){
                    int matchScore = [card match:@[otherCard]];
                                      if(matchScore){
                                          otherCard.unplayable = YES;
                                          card.unplayable = YES;
                                          self.score += matchScore * MATCH_BONUS;
                                      } else {
                                          otherCard.faceup = NO;
                                          self.score -= MISMATCH_PENALTY;
                                      }
                                      break;
                }
            }
                                      self.score -= FLIP_COST;
        }
        card.faceup = !card.isFaceup;
    }
}
@end