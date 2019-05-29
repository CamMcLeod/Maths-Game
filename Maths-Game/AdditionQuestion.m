//
//  AdditionQuestion.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        // set start time to now
        _startTime = [NSDate date];
        
        // generate random numbers to add upon initialization
        int rand1 = 10 + arc4random_uniform(90);
        int rand2 = 10 + arc4random_uniform(90);
        
        // generate question string with randomly generated numbers
        _question = [[NSString alloc] initWithFormat:@"%d + %d = ?", rand1 , rand2];
        
        // add numbers to solve correct answer
        int sum = rand1 + rand2;
        _answer = (NSInteger) sum;
    }
    return self;
}

- (void) setAnswer:(NSInteger)answer {

    _answer = answer;
}

// overriding getter to return end date when answer is got
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

@end
