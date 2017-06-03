//
//  CLCompany.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CLCompany <NSObject>

-(void)add:(id<CLCompany>)company;
-(void)remove:(id<CLCompany>)company;
- (void)display:(NSInteger)depth;
-(void)lineofDuty;

@end
