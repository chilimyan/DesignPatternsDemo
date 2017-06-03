//
//  CLObserverDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLObserverDemo.h"
#import "CLBoss.h"
#import "CLStockObserver.h"
#import "CLNBAObserver.h"

@interface CLObserverDemo ()

@end

@implementation CLObserverDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"观察者模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLBoss *boss = [[CLBoss alloc] initWithName:@"我胡汉三回来了！"];
    CLStockObserver *tongshi1 = [[CLStockObserver alloc] initWithSubject:boss name:@"张三"];
    CLNBAObserver *tongshi2 = [[CLNBAObserver alloc] initWithSubject:boss name:@"李四"];
    
    [boss attach:tongshi1];
    [boss attach:tongshi2];
    
//    [boss deatach:tongshi1];
    
    [boss notify];
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
