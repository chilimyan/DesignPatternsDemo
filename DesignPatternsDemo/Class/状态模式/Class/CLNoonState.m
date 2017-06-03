//
//  CLNoonState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLNoonState.h"
#import "CLWork.h"
#import "CLAfternoonState.h"

@implementation CLNoonState

- (void)writeProgram:(CLWork *)work{
    if (work.hour < 13) {
        NSLog(@"当前时间:%f点 饿了，午饭；犯困，午休",work.hour);
    }else{
        work.state = [[CLAfternoonState alloc] init];
        [work writeProgram];
    }
}

@end
