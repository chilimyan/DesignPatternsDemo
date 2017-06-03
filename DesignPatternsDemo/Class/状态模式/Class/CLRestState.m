//
//  CLRestState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLRestState.h"
#import "CLWork.h"

@implementation CLRestState

- (void)writeProgram:(CLWork *)work{
    NSLog(@"当前时间：%f点 下班回家了!",work.hour);
}

@end
