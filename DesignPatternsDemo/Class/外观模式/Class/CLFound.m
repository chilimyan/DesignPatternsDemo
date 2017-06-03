//
//  CLFound.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLFound.h"
#import "CLStock1.h"
#import "CLStock2.h"
#import "CLStock3.h"

@interface CLFound ()

@property (nonatomic, strong)CLStock1 *stock1;
@property (nonatomic, strong)CLStock2 *stock2;
@property (nonatomic, strong)CLStock3 *stock3;

@end

@implementation CLFound

- (instancetype)init{
    if (self = [super init]) {
        _stock1 = [[CLStock1 alloc] init];
        _stock2 = [[CLStock2 alloc] init];
        _stock3 = [[CLStock3 alloc]init];
    }
    return self;
}

-(void)buyFund{
    [_stock1 buy];
    [_stock2 buy];
    [_stock3 buy];
}
-(void)sellFund{
    [_stock1 sell];
    [_stock2 sell];
    [_stock3 sell];
}

@end
