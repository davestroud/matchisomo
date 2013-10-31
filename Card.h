//
//  Card.h
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card : NSObject

@property (strong) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

@end