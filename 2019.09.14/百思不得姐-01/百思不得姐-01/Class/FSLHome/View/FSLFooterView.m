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


@interface FSLFooterView ()

/**字典模型*/
@property(nonatomic,strong) NSMutableDictionary<NSString * , FSLMeSquare *> *squareDict;


@end


@implementation FSLFooterView

-(NSMutableDictionary<NSString *,FSLMeSquare *> *)squareDict {
    if (!_squareDict) {
        _squareDict = [NSMutableDictionary dictionary];
    }
    return  _squareDict;
    
}

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
    /// 拿到对应的信息
    NSString *textString =  btn.currentTitle ; /// 拿到信息值
    
    /// 类名+字符串地址信息
    
    btn.description;
    
    self.squareDict[btn.description] = [[FSLMeSquare alloc] init];
    
    /// 获取父控件位置
    UITableView *tableView  = (UITableView *)self.superview;
    /// 清空一下，再来处理
    tableView.tableFooterView = nil ;
    
    tableView.tableFooterView = self;
}

-(void)buttonClick:(UIButton *) btn {
    
    FSLMeSquare *square = self.squareDict[btn.currentTitle];
    
    /**
     containsString
     
     hasSuffix
     
     hasPrefix
     */
    
    if ([square.url hasPrefix:@"http"]) {
        
    }else if ([square.url hasPrefix:@"mode"]) {
        if ([square.url hasPrefix:@"BDJ_To_Check"]) {
            
        }
    }
    
    
    /// 取出对应的控制器 ,进行跳转
    
    
    UITabBarController *tabBarVc = (UITabBarController *)self.window.rootViewController;
    /// 当前选中的viewController
    UINavigationController *nav = tabBarVc.selectedViewController;
//    [nav pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>]
    
}


@end
