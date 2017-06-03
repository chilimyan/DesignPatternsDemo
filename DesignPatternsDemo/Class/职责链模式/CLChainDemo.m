//
//  CLChainDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLChainDemo.h"
#import "CLManager.h"
#import "CLMajordomo.h"
#import "CLRequest.h"
#import "CLCommonManager.h"
#import "CLGeneralManager.h"

@interface CLChainDemo ()

@end

@implementation CLChainDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"职责链模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLCommonManager *jinli = [[CLCommonManager alloc]initWithName:@"金利"];
    CLMajordomo *zongjian = [[CLMajordomo alloc]initWithName:@"总监"];
    CLGeneralManager *zongjinli = [[CLGeneralManager alloc] initWithName:@"种经历"];
    
    [jinli setSuperior:zongjian];
    [zongjian setSuperior:zongjinli];
    
    CLRequest *request = [[CLRequest alloc] init];
    request.requestType = RequestLeaveType;
    request.requestContent = @"小菜请假";
    request.number = 1;
    [jinli requestApplications:request];
    
    CLRequest *request1 = [[CLRequest alloc] init];
    request1.requestType = RequestLeaveType;
    request1.requestContent = @"小菜请假";
    request1.number = 4;
    [jinli requestApplications:request1];
    
    CLRequest *request2 = [[CLRequest alloc] init];
    request2.requestType = RequestRaisesType;
    request2.requestContent = @"小菜请求加薪";
    request2.number = 500;
    [jinli requestApplications:request2];
    
    CLRequest *request3 = [[CLRequest alloc] init];
    request3.requestType = RequestRaisesType;
    request3.requestContent = @"小菜请求加薪";
    request3.number = 1000;
    [jinli requestApplications:request3];
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
