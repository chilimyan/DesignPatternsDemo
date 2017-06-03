//
//  CLAfternoonState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAfternoonState.h"
#import "CLWork.h"
#import "CLEveningState.h"

@implementation CLAfternoonState

- (void)writeProgram:(CLWork *)work{
    if (work.hour < 17) {
        NSLog(@"当前时间：%f点 下午状态还不错，继续努力",work.hour);
    }else{
        work.state = [[CLEveningState alloc] init];
        [work writeProgram];
    }
}

@end
