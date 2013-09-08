//
//  Card.h
//  Matchismo
//
//  Created by DAVID STROUD on 9/3/13.
//  Copyright (c) 2013 DAVID STROUD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString * contents;

@property (nonatomic, getter = isFaceup) BOOL faceup;

@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;
@end
