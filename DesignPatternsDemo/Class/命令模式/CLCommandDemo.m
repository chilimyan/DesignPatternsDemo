
//
//  CLCommandDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCommandDemo.h"
#import "CLCommand.h"
#import "CLBarbecuer.h"
#import "CLBakeMuttonCommand.h"
#import "CLBakeChickenWingCOmmand.h"
#import "CLWaiter.h"

@interface CLCommandDemo ()

@end

@implementation CLCommandDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"命令模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLBarbecuer *xinjiangBoy = [[CLBarbecuer alloc] init];
    CLCommand *backMuttonCOmmand = [[CLBakeMuttonCommand alloc] initWithBarbecuer:xinjiangBoy name:@"烤羊肉串"];
    CLCommand *backMuttonCOmmand1 = [[CLBakeMuttonCommand alloc] initWithBarbecuer:xinjiangBoy name:@"烤羊肉串"];
    CLCommand *bakeChickenCommand = [[CLBakeChickenWingCOmmand alloc] initWithBarbecuer:xinjiangBoy name:@"烤鸡翅"];
    
    CLWaiter *girl = [[CLWaiter alloc] init];
    
    [girl setOrder:backMuttonCOmmand];
    [girl setOrder:backMuttonCOmmand1];
    [girl setOrder:bakeChickenCommand];
    
    [girl notify];
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
