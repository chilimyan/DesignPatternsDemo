//
//  CLWork.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLWork.h"
#import "CLForenoonState.h"

@implementation CLWork

- (instancetype)init{
    if (self = [super init]) {
        self.state = [[CLForenoonState alloc] init];
        self.finish = NO;
    }
    return self;
}

- (void)writeProgram{
    [self.state writeProgram:self];
}

@end
