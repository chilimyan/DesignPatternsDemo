//
//  CLStrategyDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLStrategyDemo.h"
#import "CLCashContext.h"

@interface CLStrategyDemo ()

@end

@implementation CLStrategyDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"策略模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    CLCashContext *context = [[CLCashContext alloc] initWithCashType:CLCashTypeNormal];
    NSLog(@"正常收费：%f",[context getResult:110]);
    CLCashContext *contextReturn = [[CLCashContext alloc] initWithCashType:CLCashTypeReturn];
    NSLog(@"返利后：%f",[contextReturn getResult:110]);
    CLCashContext *contextRebate = [[CLCashContext alloc] initWithCashType:CLCashTypeRobate];
    NSLog(@"打折后：%f",[contextRebate getResult:110]);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
