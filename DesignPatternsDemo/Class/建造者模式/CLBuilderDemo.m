//
//  CLBuilderDemo.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLBuilderDemo.h"
#import "CLThinPersonBuild.h"
#import "CLFatPersonBuild.h"
#import "CLPersonBuild.h"
#import "CLPersonDirector.h"

@interface CLBuilderDemo ()

@end

@implementation CLBuilderDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"建造者模式Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    id<CLPersonBuild> personBuild ;
    
    personBuild = [[CLThinPersonBuild alloc]init];
    
    CLPersonDirector *personDirector = [[CLPersonDirector alloc] initWithPersonBuild:personBuild];
    [personDirector buildPerson];
    
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
