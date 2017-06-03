//
//  CLPersonBuild.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CLPersonBuild <NSObject>

@required

-(void)buildHead;
-(void)buildBody;
-(void)buildArmLeft;
-(void)buildArmRight;
-(void)buildLegLeft;
-(void)buildLegRight;

@end
