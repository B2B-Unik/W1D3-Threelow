//
//  Dice.h
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

// Property to store dice current value
@property (nonatomic) NSInteger currentValue;

// Method to randomize the dice value
- (void)randomDiceValue;

@end
