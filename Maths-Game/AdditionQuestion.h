//
//  AdditionQuestion.h
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
{
    NSInteger _answer;
}

@property NSString *question;
@property NSDate *startTime;
@property NSDate *endTime;

- (NSInteger) answer;
- (void) setAnswer: (NSInteger) answer;

@end

NS_ASSUME_NONNULL_END
