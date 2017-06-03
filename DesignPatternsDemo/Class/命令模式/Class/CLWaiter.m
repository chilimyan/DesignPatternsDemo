//
//  CLWaiter.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLWaiter.h"
#import "CLCommand.h"

@interface CLWaiter ()

@property (nonatomic, strong) NSMutableArray *orders;

@end

@implementation CLWaiter

- (void)setOrder:(CLCommand *)command{
    [self.orders addObject:command];
    NSLog(@"增加订单：%@",command.name);
}

- (void)cancelOrder:(CLCommand *)command{
    [self.orders removeObject:command];
    NSLog(@"取消订单：%@",command.name);
}

- (void)notify{
    for (CLCommand *command in self.orders) {
        [command excuteCommand];
    }
}

- (NSMutableArray *)orders{
    if (!_orders) {
        _orders = [NSMutableArray array];
    }
    return _orders;
}

@end
