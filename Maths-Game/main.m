//
//  main.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(TRUE) {
            
            char inputChars[255];
            
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"%@ newline?", inputString);
            NSLog(@"%@ newline?", trimmedString);
            
        }
    }
    return 0;
}
