//
//  CLFactoryMethodDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLFactoryMethodDemo.h"
#import "CLLeiFengFactory.h"
#import "CLLeiFeng.h"
#import "CLUdergraduateFactory.h"
#import "CLVolunteerFactory.h"

@interface CLFactoryMethodDemo ()

@end

@implementation CLFactoryMethodDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"工厂方法模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    id<CLLeiFengFactory> leiFengFactory;
    
//    leiFengFactory = [[CLVolunteerFactory alloc] init];
     leiFengFactory = [[CLUdergraduateFactory alloc] init];
    
   id<CLLeiFeng> leifeng = [leiFengFactory creatLeiFeng];
    
    [leifeng buyrice];
    [leifeng wash];
    [leifeng sweep];
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
