//
//  CLMemoDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLMemoDemo.h"
#import "CLGameRole.h"
#import "CLRoleStateMemo.h"
#import "CLRoleStateManager.h"

@interface CLMemoDemo ()

@end

@implementation CLMemoDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"备忘录模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //大战前
    CLGameRole *role = [[CLGameRole alloc] init];
    [role getState];
    
    //保存进度
    CLRoleStateManager *stateManager = [[CLRoleStateManager alloc]initWithState:[role saveStateMemo]];
    
    //大战boss，损耗严重
    [role fightBoss];
    [role getState];
    
    //恢复之前状态
    [role recoveryState:stateManager.roleState];
    [role getState];
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
