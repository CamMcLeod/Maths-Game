//
//  AdditionQuestion.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        // set start time to now
        _startTime = [NSDate date];
        
        // generate random numbers to add upon initialization
        _leftValue = 10 + arc4random_uniform(90);
        _rightValue = 10 + arc4random_uniform(90);
        
        // generate question string with randomly generated numbers
        // _question = [[NSString alloc] initWithFormat:@"%d + %d = ?", rand1 , rand2];
        
        // add numbers to solve correct answer
        //int sum = _leftValue + _rightValue;
        //_answer = (NSInteger) sum;
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

- (NSTimeInterval) answerTime {
    // return time interval between start and end time
    return [_endTime timeIntervalSinceDate: _startTime];
}

- (void) generateQuestion {
    //do nothing for subclasses to populate
}

@end
