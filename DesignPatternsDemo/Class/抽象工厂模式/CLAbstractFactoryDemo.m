//
//  CLAbstractFactoryDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAbstractFactoryDemo.h"
#import "CLUser.h"
#import "CLDepartment.h"
#import "CLSqlserverFactory.h"
#import "CLAccessFactory.h"

@interface CLAbstractFactoryDemo ()

@end

@implementation CLAbstractFactoryDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"抽象工厂模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    id<CLUser> user;
    id<CLDepartment> department;
    
    //换数据库只要改这里就好了
//    id<CLFactory> factory = [[CLSqlserverFactory alloc] init];
    id<CLFactory> factory = [[CLSqlserverFactory alloc] init];
    
    user = [factory createUser];
    [user insertUser:[[User alloc] init]];
    [user getUser];
    
    department = [factory createDepartment];
    [department insertDepartment:[[Department alloc] init]];
    [department getDepartment];
    
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
