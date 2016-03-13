//
//  GameController.m
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        
        self.dices = [NSMutableArray arrayWithObjects:diceOne, diceTwo, diceThree, diceFour, diceFive, nil];
        self.dicesHeld = [NSMutableSet set];
        self.unicodeSymbols = @[@"\u2680",
                                @"\u2681",
                                @"\u2682",
                                @"\u2683",
                                @"\u2684",
                                @"\u2685"];
        
    }
    return self;
}

#pragma mark Roll Dice

- (void)rollDice
{
    
    for (Dice *aDice in self.dices) {
        
        if (![self.dicesHeld containsObject:aDice]) {
            [aDice randomDiceValue];
 
        }
    }
    
}

#pragma mark  Dice Print

- (void)printDiceValue {
    
    for (int i = 0 ; i < [self.dices count]; i++) {
        
        Dice *aDice = self.dices[i];
        
        if ([self.dicesHeld containsObject:aDice]) {
        
            NSLog(@"[dice %d is: %@]", i, [self.unicodeSymbols objectAtIndex:(aDice.currentValue-1)]);
        
        } else {
            
            NSLog(@"dice %d is: %@", i, [self.unicodeSymbols objectAtIndex:(aDice.currentValue-1)]);
            
        }
        
    } NSLog(@"Score is %ld", (long)self.currentScore);
    
}

#pragma mark Hold/Unhold Dices

- (void)heldDie:(NSInteger)holdDice {
    
   Dice *diceToHold = self.dices[holdDice];
    
    if ([self.dicesHeld containsObject:diceToHold]) {
        
        [self.dicesHeld removeObject:diceToHold];
    
    } else {
        
        [self.dicesHeld addObject:diceToHold];
        
    }
    
}

#pragma mark Reset Held Dices

- (void)resetDice {
    
    [self.dicesHeld removeAllObjects];

}

#pragma mark Score

- (NSInteger)currentScore {
    
    NSInteger sum = 0;
    
    for (Dice *aDice in self.dicesHeld) {
        
        if (aDice.currentValue != 3) {
            sum += aDice.currentValue;
        }
        
    }
    return sum;
}
@end
