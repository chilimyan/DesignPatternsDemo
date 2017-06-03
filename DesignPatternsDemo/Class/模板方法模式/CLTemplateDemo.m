//
//  CLTemplateDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLTemplateDemo.h"
#import "CLTestPaperA.h"
#import "CLTestPaperB.h"
#import "CLTestPaper.h"

@interface CLTemplateDemo ()

@end

@implementation CLTemplateDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"模板方法模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLTestPaper *studentA = [[CLTestPaperA alloc]init];
    [studentA testQuestion1];
    [studentA testQuestion2];
    
    CLTestPaper *studentB = [[CLTestPaperB alloc]init];
    [studentB testQuestion1];
    [studentB testQuestion2];
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
