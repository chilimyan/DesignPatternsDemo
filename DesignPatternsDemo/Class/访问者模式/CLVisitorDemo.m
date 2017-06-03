//
//  CLVisitorDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLVisitorDemo.h"
#import "CLObjectStructure.h"
#import "CLMan.h"
#import "CLWoman.h"
#import "CLSuccess.h"
#import "CLFailing.h"
#import "CLAmativeness.h"

@interface CLVisitorDemo ()

@end

@implementation CLVisitorDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"访问者模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLObjectStructure *o = [[CLObjectStructure alloc] init];
    [o attach:[[CLMan alloc] init]];
    [o attach:[[CLWoman alloc] init]];
    //成功时的反应
    CLSuccess *v1 = [[CLSuccess alloc]init];
    [o display:v1];
    
    //失败时的反应
    CLFailing *v2 = [[CLFailing alloc]init];
    [o display:v2];
    
    //恋爱时的反应
    CLAmativeness *v3 = [[CLAmativeness alloc]init];
    [o display:v3];
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
