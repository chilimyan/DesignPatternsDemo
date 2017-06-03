//
//  CLInterpreterDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLInterpreterDemo.h"
#import "CLContext.h"
#import "CLAbstractExpression.h"
#import "CLTerminalExpression.h"
#import "CLNonterminalExpresion.h"

@interface CLInterpreterDemo ()

@end

@implementation CLInterpreterDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"解释器模式";
    
    CLContext *context = [[CLContext alloc] init];
    NSMutableArray *list = [NSMutableArray array];
    [list addObject:[[CLTerminalExpression alloc] init]];
    [list addObject:[[CLNonterminalExpresion alloc] init]];
    [list addObject:[[CLTerminalExpression alloc] init]];
    [list addObject:[[CLTerminalExpression alloc] init]];
    
    for (CLAbstractExpression *exp in list) {
        [exp interpret:context];
    }
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
