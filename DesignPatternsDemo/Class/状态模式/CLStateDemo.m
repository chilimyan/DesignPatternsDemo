//
//  CLStateDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLStateDemo.h"
#import "CLWork.h"

@interface CLStateDemo ()

@end

@implementation CLStateDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"状态模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLWork *work = [[CLWork alloc]init];
    work.hour = 9;
    [work writeProgram];
    work.hour = 10;
    [work writeProgram];
    work.hour = 12;
    [work writeProgram];
    work.hour = 13;
    [work writeProgram];
    work.hour = 14;
    [work writeProgram];
    work.hour = 17;
    [work writeProgram];
    
    work.finish = YES;
//    work.finish = NO;
    
    work.hour = 19;
    [work writeProgram];
    work.hour = 22;
    [work writeProgram];
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
