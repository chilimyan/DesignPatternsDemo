//
//  CLEveningState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLEveningState.h"
#import "CLWork.h"
#import "CLSleepingState.h"
#import "CLRestState.h"

@implementation CLEveningState

- (void)writeProgram:(CLWork *)work{
    if (work.finish) {
        work.state = [[CLRestState alloc] init];
        [work writeProgram];
    }else{
        if (work.hour < 21) {
            NSLog(@"当前时间：%f点 加班哦，疲累至极！",work.hour);
        }else{
            work.state = [[CLSleepingState alloc] init];
            [work writeProgram];
        }
    }
}


@end
