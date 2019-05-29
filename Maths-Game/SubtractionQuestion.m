//
//  SubtractionQuestion.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-29.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    // set super.answer here
    super.answer = super.leftValue - super.rightValue;
    
    // set super.question here
    super.question = [[NSString alloc] initWithFormat:@"%ld - %ld = ?", super.leftValue , super.rightValue];

}

@end
