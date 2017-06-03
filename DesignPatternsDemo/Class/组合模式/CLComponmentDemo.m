//
//  CLComponmentDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLComponmentDemo.h"
#import "CLCompany.h"
#import "CLHRDepartment.h"
#import "CLConcreteCompany.h"
#import "CLFinanceDepartment.h"

@interface CLComponmentDemo ()

@end

@implementation CLComponmentDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"组合模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLConcreteCompany *root = [[CLConcreteCompany alloc] initWithName:@"北京总公司"];
    [root add:[[CLHRDepartment alloc] initWithName:@"总公司人力资源部"]];
    [root add:[[CLFinanceDepartment alloc] initWithName:@"总公司财务部"]];
    
    CLConcreteCompany *comp = [[CLConcreteCompany alloc] initWithName:@"上海华东分公司"];
    [comp add:[[CLHRDepartment alloc] initWithName:@"华东分公司人力资源部"]];
    [comp add:[[CLFinanceDepartment alloc] initWithName:@"华东分公司财务部"]];
    [root add:comp];
    
    CLConcreteCompany *comp1 = [[CLConcreteCompany alloc] initWithName:@"南京办事处"];
    [comp1 add:[[CLHRDepartment alloc] initWithName:@"南京办事处人力资源部"]];
    [comp1 add:[[CLFinanceDepartment alloc] initWithName:@"南京办事处财务部"]];
    [comp add:comp1];
    
    CLConcreteCompany *comp2 = [[CLConcreteCompany alloc] initWithName:@"杭州办事处"];
    [comp2 add:[[CLHRDepartment alloc] initWithName:@"杭州办事处人力资源部"]];
    [comp2 add:[[CLFinanceDepartment alloc] initWithName:@"杭州办事处财务部"]];
    [comp add:comp2];
    
    NSLog(@"结构图:\n");
    [root display:1];
    
    NSLog(@"\n职责:\n");
    [root lineofDuty];
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
