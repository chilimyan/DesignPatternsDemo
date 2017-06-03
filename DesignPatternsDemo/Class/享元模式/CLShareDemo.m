//
//  CLShareDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLShareDemo.h"
#import "CLShareUser.h"
#import "CLConcreteWebSite.h"
#import "CLWebSite.h"
#import "CLWebSiteFactory.h"

typedef id<CLWebSite> CLWebSiteType;

@interface CLShareDemo ()

@end

@implementation CLShareDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"享元模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CLWebSiteFactory *factory = [[CLWebSiteFactory alloc] init];
    
    CLWebSiteType fx = [factory getWebSiteCategory:@"产品展示"];
    CLShareUser *user = [[CLShareUser alloc] init];
    user.name = @"小菜";
    [fx use:user];
    
    CLWebSiteType fy = [factory getWebSiteCategory:@"产品展示"];
    CLShareUser *user1 = [[CLShareUser alloc]init];
    user1.name = @"大鸟";
    [fy use:user1];
    
    CLWebSiteType fz = [factory getWebSiteCategory:@"博客"];
    CLShareUser *user2 = [[CLShareUser alloc] init];
    user2.name = @"咪咪";
    [fz use:user2];
    
    NSInteger count = [factory getWebSiteCount];
    NSLog(@"%ld",count);
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
