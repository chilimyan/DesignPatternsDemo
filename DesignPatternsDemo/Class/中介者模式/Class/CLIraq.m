//
//  CLIraq.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLIraq.h"
#import "CLUnitedNations.h"

@implementation CLIraq

- (instancetype)initWith:(CLUnitedNations *)mediator{
    if (self = [super initWith:mediator]) {
        
    }
    return self;
}

- (void)declare:(NSString *)message{
    [self.mediator declareWithMessage:message colleague:self];
}

- (void)getMessage:(NSString *)message{
    NSLog(@"伊拉克获得对方信息：%@",message);
}


@end
