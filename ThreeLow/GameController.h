//
//  GameController.h
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *dices;
@property (nonatomic) NSMutableSet *dicesHeld;
@property (nonatomic) NSArray *unicodeSymbols;


- (void)rollDice;
- (void)printDiceValue;
- (void)heldDie:(NSInteger)holdDice;
- (void)resetDice;
- (NSInteger)currentScore;

@end
