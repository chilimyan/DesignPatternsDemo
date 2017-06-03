//
//  CLFacadeDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLFacadeDemo.h"
#import "CLFound.h"

@interface CLFacadeDemo ()

@end

@implementation CLFacadeDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"外观模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLFound *found = [[CLFound alloc]init];
    [found buyFund];
    [found sellFund];
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
