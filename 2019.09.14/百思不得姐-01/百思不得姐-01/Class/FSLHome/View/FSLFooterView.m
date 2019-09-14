//
//  FSLFooterView.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLFooterView.h"
#import "AFNetworking.h"

@implementation FSLFooterView
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
//        manger.securityPolicy
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        
        
        [manger GET:@"" parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
        
    }
    return  self;
}

@end
