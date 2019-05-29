//
//  QuestionFactory.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-29.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory ()

@property NSArray *questionSubclassNames;

@end

@implementation QuestionFactory

- (instancetype)init {
    if (self = [super init]) {
        
        _questionSubclassNames = @[@"AdditionQuestion",
                                   @"SubtractionQuestion",
                                   @"MultiplicationQuestion",
                                   @"RemainderQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    
    NSString *className = [_questionSubclassNames objectAtIndex:arc4random_uniform(4)];
    return [[NSClassFromString(className) alloc ]init];;
}

@end
