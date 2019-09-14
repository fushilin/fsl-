//
//  FSLFooterView.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLFooterView.h"
#import "AFNetworking.h"
#import "FSLMeSquare.h"
#import "MJExtension.h"

@implementation FSLFooterView
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
//        manger.securityPolicy
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        
        
        [manger GET:@"" parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            NSArray *squares = [FSLMeSquare  mj_objectArrayWithKeyValuesArray:responseObject[@""]];
            
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
        
    }
    return  self;
}

-(void)withSqaArray:(NSArray *)array {
    
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    
    /// 获取父控件位置
    UITableView *tableView  = (UITableView *)self.superview;
    /// 清空一下，再来处理
    tableView.tableFooterView = nil ;
    
    tableView.tableFooterView = self;
}

@end
