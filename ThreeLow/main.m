//
//  main.m
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        GameController *myGame = [[GameController alloc]init];
        
        InputCollector *newInputCollector = [[InputCollector alloc] init];
        InputCollector *holdInputCollector = [[InputCollector alloc] init];
        
        while (true) {
            
            NSString *userInput = [newInputCollector inputForPrompt:@"Type: [roll] Roll dice [hold] Hold dice [reset] Reset all held dices [exit] Stop rolling dice> _"];
            
            if ([userInput  isEqual: @"exit"]) {
                NSLog(@"Thank you for playing!");
                break;
            }
            
            if ([userInput  isEqual: @"hold"]) {
                
                NSString *userHoldInput = [holdInputCollector inputForPrompt:@"Enter die/dices to be held (0-4)> _"];
                
                NSInteger holdIput = [userHoldInput integerValue];
                
                [myGame heldDie:holdIput];
            }
            
            if ([userInput  isEqual: @"reset"]) {
               
                [myGame resetDice];
            }
    
            if ([userInput  isEqual: @"roll"]) {
                                
                [myGame rollDice];
                
                [myGame printDiceValue];
                                
                
            }
            
        }
 
        
    }
    return 0;
}
