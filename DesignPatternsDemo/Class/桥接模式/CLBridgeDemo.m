//
//  CLBridgeDemo.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLBridgeDemo.h"
#import "CLHandSetBrand.h"
#import "CLHandsetBrandN.h"
#import "CLHandsetBrandM.h"
#import "CLHandSetGame.h"
#import "CLHandsetAddressList.h"
#import "CLHandSetSoft.h"

@interface CLBridgeDemo ()

@end

@implementation CLBridgeDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"桥接模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    id<CLHandSetBrand> brand;
    CLHandSetGame *game = [[CLHandSetGame alloc] init];
    brand = [[CLHandsetBrandN alloc] initWithSoft:game];
    [brand run];
    
    CLHandsetAddressList *address = [[CLHandsetAddressList alloc] init];
    brand = [[CLHandsetBrandN alloc] initWithSoft:address];
    [brand run];
    
    brand = [[CLHandsetBrandM alloc] initWithSoft:game];
    [brand run];
    
    brand = [[CLHandsetBrandM alloc] initWithSoft:address];
    [brand run];
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
