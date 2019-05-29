//
//  QuestionManager.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-29.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        
        // initialize questions array
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *) timeOutput {
    
    //add time intervals for each question
    NSTimeInterval totalTime = 0;
    for (Question *question in self.questions) {
        totalTime += question.answerTime;
    }
    
//    NSDate *gameStart = [[self.questions firstObject] startDate];
//    NSDate *gameEnd = [[self.questions lastObject] endDate];
    
    NSTimeInterval averageTime = totalTime / [self.questions count];
    
    NSString *output = [NSString stringWithFormat:@"total time: %.fs, average time:%.fs", totalTime, averageTime];
    
    return output;
}


@end
