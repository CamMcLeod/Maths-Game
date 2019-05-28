//
//  main.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(TRUE) {
            //define char for user input
            char inputChars[255];
            
            // initialize question which generates numbers
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            //ask question
            NSLog(@"%@", newQuestion.question);
            
            // take user input for answer
            fgets(inputChars, 255, stdin);
            
            // store string and trim as nsstring
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([trimmedString integerValue] == newQuestion.answer) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong! The right answer is: %ld", newQuestion.answer);
            }
            
        }
    }
    return 0;
}
