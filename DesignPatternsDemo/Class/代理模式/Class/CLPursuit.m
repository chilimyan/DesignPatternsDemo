//
//  CLPursuit.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLPursuit.h"

@interface CLPursuit ()

@property (nonatomic, strong)CLSchoolGirl *mm;

@end

@implementation CLPursuit

- (instancetype)initWithSchoolGirl:(CLSchoolGirl *)schoolGirl{
    if (self = [super init]) {
        _mm = schoolGirl;
    }
    return self;
}

//送洋娃娃
- (void)giveGift{
    NSLog(@"送%@洋娃娃",_mm.name);
}
//送鲜花
- (void)giveFlowers{
    NSLog(@"送%@鲜花",_mm.name);
}
//送巧克力
- (void)giveChocolate{
    NSLog(@"送%@巧克力",_mm.name);
}

@end
