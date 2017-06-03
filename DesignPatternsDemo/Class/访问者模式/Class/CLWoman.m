//
//  CLWoman.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLWoman.h"
#import "CLAction.h"

@implementation CLWoman

- (instancetype)init{
    if (self = [super init]) {
        self.name = @"女人";
    }
    return self;
}

- (void)accpet:(CLAction *)visitor{
    [visitor getWomanConclusion:self];
}


@end
