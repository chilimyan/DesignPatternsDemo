//
//  CLIteratorDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLIteratorDemo.h"
#import "CLConcreteAggregate.h"
#import "CLIterator.h"
#import "CLConcreateIterator.h"

@interface CLIteratorDemo ()

@end

@implementation CLIteratorDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    //这里的适配器模式OC已经实现了，比如比如数组的遍历。
    self.title = @"适配器模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLConcreteAggregate *a = [[CLConcreteAggregate alloc] init];
    [a addObject:@"大鸟"];
    [a addObject:@"小菜"];
    [a addObject:@"行李"];
    [a addObject:@"老外"];
    [a addObject:@"公交内部员工"];
    [a addObject:@"小偷"];
    
    id<CLIterator> i = [[CLConcreateIterator alloc] initWithConcreteAggreate:a];
    
    NSLog(@"第一个对象：%@\n",[i first]);
    while (![i isDone]) {
        NSLog(@"%@,请买票！",[i currentItem]);
        [i next];
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
