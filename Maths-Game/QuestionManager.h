//
//  QuestionManager.h
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-29.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

-(NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
