//
//  CLSleepingState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSleepingState.h"
#import "CLWork.h"

@implementation CLSleepingState

- (void)writeProgram:(CLWork *)work{
    NSLog(@"当前时间：%f点 不行了，睡着了!",work.hour);
}

@end
