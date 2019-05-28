//
//  ScoreKeeper.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        
        // initialize scores to zero
        _right = 0;
        _wrong = 0;
    }
    return self;
}

-(void)score {
    //calculate score in percent
    float percentRight = 100.0 * self.right / (self.right + self.wrong);
    
    //output score
    NSLog(@"%@", [[NSString alloc] initWithFormat:@"score:%d right, %d wrong ---- %.f%%", self.right , self.wrong , percentRight]);
}

@end
