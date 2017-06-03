//
//  CLWebSiteFactory.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLWebSite.h"

@interface CLWebSiteFactory : NSObject

@property(nonatomic,strong)NSDictionary *flyweights;

-(id<CLWebSite> )getWebSiteCategory:(NSString *)webkey;
-(NSInteger)getWebSiteCount;

@end
