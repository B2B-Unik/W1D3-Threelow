//
//  InputCollector.m
//  ThreeLow
//
//  Created by Sergio Martinez on 2016-03-09.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    // Print the prompt string
    NSLog (@"%@", promptString);
    
    // Create an array of characters called inputChars with capacity of 255
    char inputChars[255];
    
    // Get the user input and store it in inputChars
    fgets(inputChars, 255, stdin);
    
    /* Return a string created by copying the data of inputChars array of UTF8-encoded bytes.
     and assign it to the NSString object called inputString. */
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // Create an array by separating the inputString at any instance of \n
    NSArray *myArray = [inputString componentsSeparatedByString:@"\n"];
    
    // Take the first object in myArray and assign it to NSString object myString
    NSString *myString = [myArray firstObject];
    
    
    return myString;
    
}

@end
