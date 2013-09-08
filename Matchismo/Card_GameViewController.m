//
//  Card_GameViewController.m
//  Matchismo
//
//  Created by DAVID STROUD on 9/1/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import "Card_GameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface Card_GameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation Card_GameViewController


- (CardMatchingGame *)game
{
    if (!_game)_game = [[CardMatchingGame alloc] initWithCardCount:self.cardButtons.count
                                                         usingDeck:[[PlayingCardDeck alloc] init]];
        return _game;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    [self updateUI];
    }
- (void)updateUI
    {
        for (UIButton *cardButton in self.cardButtons)  {
            Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
                          [cardButton setTitle:card.contents forState:UIControlStateSelected];
                          [cardButton setTitle:card.contents forState:UIControlStateSelected|UIControlStateDisabled];
                          cardButton.selected = card.isFaceup;
                          cardButton.enabled = !card.isUnplayable;
                          cardButton.alpha = card.isUnplayable ? 0.3 : 1.0;
        }
                          self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    }
                        

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipCount++;
    [self updateUI];
}

@end
