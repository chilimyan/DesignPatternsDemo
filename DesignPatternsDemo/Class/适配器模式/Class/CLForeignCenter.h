//
//  CLForeignCenter.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLForeignCenter : NSObject

@property(nonatomic,copy)NSString *name;
-(void)foreignAttact;
-(void)foreignDefent;
-(instancetype)initWithName:(NSString *)name;

@end
