//
//  Dice.m
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "Dice.h"

@implementation Dice


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomDiceValue];
    }
    return self;
}


- (void)randomDiceValue {

    self.currentValue = arc4random_uniform(6) + 1;
    
    
    // If I wanted to create a variable to store the randomDiceValue, then I would use this
    //    NSInteger randomValue = arc4random_uniform(6) + 1;
    //
    //    return randomValue;
    
}

@end






