//
//  CLDesignDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/20.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLDesignDemo.h"

@interface CLDesignDemo ()

@property (nonatomic, strong) NSArray *designArray;

@end

@implementation CLDesignDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"iOS设计模式Demo大全";
    self.designArray = @[@[@"简单工厂模式",@"CLSampleFactory"],
                         @[@"策略模式",@"CLStrategyDemo"],
                         @[@"装饰模式",@"CLDecoratorDemo"],
                         @[@"代理模式",@"CLProxyDemo"],
                         @[@"工厂方法模式",@"CLFactoryMethodDemo"],
                         @[@"模版方法模式",@"CLTemplateDemo"],
                         @[@"外观模式",@"CLFacadeDemo"],
                         @[@"建造者模式",@"CLBuilderDemo"],
                         @[@"观察者模式",@"CLObserverDemo"],
                         @[@"抽象工厂模式",@"CLAbstractFactoryDemo"],
                         @[@"状态模式",@"CLStateDemo"],
                         @[@"适配器模式",@"CLAdapteeDemo"],
                         @[@"备忘录模式",@"CLMemoDemo"],
                         @[@"组合模式",@"CLComponmentDemo"],
                         @[@"迭代器模式",@"CLIteratorDemo"],
                         @[@"单例模式",@"CLSingleDemo"],
                         @[@"桥接模式",@"CLBridgeDemo"],
                         @[@"命令模式",@"CLCommandDemo"],
                         @[@"职责链模式",@"CLChainDemo"],
                         @[@"中介者模式",@"CLMediatorDemo"],
                         @[@"享元模式",@"CLShareDemo"],
                         @[@"解释器模式",@"CLInterpreterDemo"],
                         @[@"访问者模式",@"CLVisitorDemo"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.designArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIndentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    cell.textLabel.text = self.designArray[indexPath.row][0];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *vc = [[NSClassFromString(self.designArray[indexPath.row][1]) alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
