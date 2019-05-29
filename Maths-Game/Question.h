//
//  AdditionQuestion.h
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
{
    NSInteger _answer;
}

@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

- (NSInteger) answer;
- (void) setAnswer: (NSInteger) answer;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
NS_ASSUME_NONNULL_END
