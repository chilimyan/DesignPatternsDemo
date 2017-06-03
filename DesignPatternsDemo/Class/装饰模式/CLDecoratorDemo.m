//
//  CLDecoratorDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLDecoratorDemo.h"
#import "CLTShirts.h"
#import "CLPerson.h"
#import "CLBigTrouser.h"

@interface CLDecoratorDemo ()

@end

@implementation CLDecoratorDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"装饰模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLPerson *person = [[CLPerson alloc] initWithName:@"小菜"];
    
    CLTShirts *dtx = [[CLTShirts alloc] initWithPerson:person];
    CLBigTrouser *kk = [[CLBigTrouser alloc] initWithPerson:dtx];
    [kk show];
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
