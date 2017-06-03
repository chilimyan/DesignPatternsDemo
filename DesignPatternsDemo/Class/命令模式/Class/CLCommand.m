//
//  CLCommand.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCommand.h"
#import "CLBarbecuer.h"

@implementation CLCommand

- (instancetype)initWithBarbecuer:(CLBarbecuer *)receiver name:(NSString *)name{
    if (self = [super init]) {
        _receive = receiver;
        _name = name;
    }
    return self;
}

- (void)excuteCommand{
    
}

@end
