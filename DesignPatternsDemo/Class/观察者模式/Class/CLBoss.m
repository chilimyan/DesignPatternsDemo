//
//  CLBoss.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLBoss.h"

@interface CLBoss ()

@property (nonatomic, strong)NSMutableArray *observersList;

@end

@implementation CLBoss

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        super.name = name;
    }
    return self;
}

- (void)attach:(CLObserver *)observer{
    [self.observersList addObject:observer];
}
- (void)deatach:(CLObserver *)observer{
    NSMutableArray *temp = [NSMutableArray arrayWithArray:self.observersList];
    for (CLObserver *obj in temp) {
        if ([obj isEqual:observer]) {
            [self.observersList removeObject:obj];
        }
    }
}

- (void)notify{
    for (CLObserver *obj in self.observersList) {
        [obj update];
    }
}

- (NSMutableArray *)observersList{
    if (!_observersList) {
        _observersList = [NSMutableArray array];
    }
    return _observersList;
}

@end
