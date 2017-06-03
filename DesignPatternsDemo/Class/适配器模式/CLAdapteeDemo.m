//
//  CLAdapteeDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAdapteeDemo.h"
#import "CLForeignCenter.h"
#import "CLPlayer.h"
#import "CLAdaptee.h"
#import "CLForwards.h"

@interface CLAdapteeDemo ()

@end

@implementation CLAdapteeDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"适配器模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLPlayer *forward = [[CLForwards alloc]initWithName:@"maidi"];
    [forward attack];
    [forward defense];
    
    CLPlayer *adaptee = [[CLAdaptee alloc] initWithName:@"姚明"];
    [adaptee attack];
    [adaptee defense];
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
