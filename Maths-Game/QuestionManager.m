//
//  QuestionManager.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-29.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        
        // initialize questions array
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
