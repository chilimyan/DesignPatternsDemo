//
//  CLMediatorDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLMediatorDemo.h"
#import "CLUnitedNations.h"
#import "CLUnitedNationsSecurityCouncil.h"
#import "CLUSA.h"
#import "CLIraq.h"

@interface CLMediatorDemo ()

@end

@implementation CLMediatorDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"中介者模式";
    
    CLUnitedNationsSecurityCouncil *unsc = [[CLUnitedNationsSecurityCouncil alloc] init];
    
    CLUSA *usa = [[CLUSA alloc] initWith:unsc];
    CLIraq *iraq = [[CLIraq alloc] initWith:unsc];
    unsc.usa = usa;
    unsc.iraq = iraq;
    
    [usa declare:@"不准研制核武器，否则要发动战争！"];
    [iraq declare:@"我们没有核武器，也不怕侵略。"];
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
