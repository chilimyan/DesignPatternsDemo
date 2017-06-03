//
//  CLProxy.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLProxy.h"

@interface CLProxy ()

@property (nonatomic, strong) CLPursuit *gg;

@end

@implementation CLProxy

- (instancetype)initWithSchoolGirl:(CLSchoolGirl *)schoolGirl{
    if (self = [super init]) {
        _gg = [[CLPursuit alloc] initWithSchoolGirl:schoolGirl];
    }
    return self;
}

//送洋娃娃
- (void)giveGift{
    [_gg giveGift];
}
//送鲜花
- (void)giveFlowers{
     [_gg giveFlowers];
}
//送巧克力
- (void)giveChocolate{
     [_gg giveChocolate];
}

@end
