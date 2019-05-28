//
//  main.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL playOn = YES;
        while(playOn) {
            //define char for user input
            char inputChars[255];
            // initialize question which generates numbers
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            //ask question
            NSLog(@"%@", newQuestion.question);
            
            //handle input with custom class
            NSString *trimmedString = [InputHandler handle];
            
            // tell user if they are correct or incorrect with their answer
            if ([trimmedString integerValue] == newQuestion.answer) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong! The right answer is: %ld", newQuestion.answer);
            }
            
            
            //ask if user wants to terminate game
            NSLog(@"Type quit to exit:");
            
            //handle input with custom class
            NSString *trimmedQuitString = [InputHandler handle];
            
            // if they typed in quit, exit the game
            if([trimmedQuitString compare: @"quit"] == NSOrderedSame) {
                playOn = NO;
            }
            
        }
    }
    return 0;
}
