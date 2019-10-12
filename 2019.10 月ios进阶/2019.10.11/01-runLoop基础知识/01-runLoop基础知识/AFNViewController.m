//
//  AFNViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "AFNViewController.h"
#import "AFNetworking.h"


@interface AFNViewController ()


@end

@implementation AFNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)upload {
    
    ///1: 创建管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    ///2: fa 请求
    manager.responseSerializer = [AFHTTPRequestSerializer serializer];
    
    /**
     数据解析的类型
     */
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@""];
    
    /**
     1: 第一个参数 ： 请求对象
     2： 第二个参数：
     */
//    [manager uploadTaskWithRequest:<#(nonnull NSURLRequest *)#> fromData:<#(nullable NSData *)#> progress:^(NSProgress * _Nonnull uploadProgress) {
//
//    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
//
//    }];

    [manager POST:@"" parameters:@"" progress:^(NSProgress * _Nonnull uploadProgress) {
     
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}
@end
