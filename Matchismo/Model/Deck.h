//
//  Deck.h
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject

- (void)addCard:(Card *card) atTop:(bool)atTop;

- (Card *)drawRandomCard;





@end


