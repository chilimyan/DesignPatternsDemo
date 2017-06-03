//
//  CLWebSiteFactory.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLWebSiteFactory.h"
#import "CLConcreteWebSite.h"

@implementation CLWebSiteFactory

- (instancetype)init{
    if (self = [super init]) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

- (id<CLWebSite>)getWebSiteCategory:(NSString *)webkey{
    __block id<CLWebSite> webset = nil;
    //遍历字典，直到找到webkey == key，则停止；
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
        if (webkey == key) {
            webset = obj;
            *stop = YES;
        }
    }];
    if (webset == nil) {
        CLConcreteWebSite *concreteset = [[CLConcreteWebSite alloc] init];
        concreteset.webName = webkey;
        webset = concreteset;
        NSMutableDictionary *mutableDic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutableDic setObject:webset forKey:webkey];
        self.flyweights = [NSDictionary dictionaryWithDictionary:mutableDic];;
    }
    return webset;
}

- (NSInteger)getWebSiteCount{
    return self.flyweights.count;
}

@end
