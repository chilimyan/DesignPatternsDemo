//
//  CLMan.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLMan.h"
#import "CLAction.h"
@implementation CLMan

- (instancetype)init{
    if (self = [super init]) {
        self.name = @"男人";
    }
    return self;
}

- (void)accpet:(CLAction *)visitor{
    [visitor getManConclusion:self];
}


@end
