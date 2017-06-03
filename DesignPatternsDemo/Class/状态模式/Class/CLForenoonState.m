//
//  CLForenoonState.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLForenoonState.h"
#import "CLWork.h"
#import "CLNoonState.h"

@implementation CLForenoonState

- (void)writeProgram:(CLWork *)work{
    if (work.hour < 12) {
        NSLog(@"当前时间：%f点 上午工作，精神百倍",work.hour);
    }else{
        work.state = [[CLNoonState alloc] init];
        [work writeProgram];
    }
}

@end
