//
//  CLProxyDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLProxyDemo.h"
#import "CLSchoolGirl.h"
#import "CLProxy.h"

@interface CLProxyDemo ()

@end

@implementation CLProxyDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"代理模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    CLSchoolGirl *girl = [[CLSchoolGirl alloc] init];
    girl.name = @"jiaojiao";
    
    CLProxy *daili = [[CLProxy alloc] initWithSchoolGirl:girl];
    
    [daili giveGift];
    [daili giveFlowers];
    [daili giveChocolate];
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
