//
//  UIWebViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "UIWebViewController.h"

@interface UIWebViewController ()<UIWebViewDelegate>
/**<#type#>*/
@property(nonatomic,strong) UIWebView *webView;

@end

@implementation UIWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    NSInvocationOperation *op1 = [[NSInvocationOperation alloc] initWithInvocation:[self invocation]];

    
}

-(NSInvocation *)invocation {
    ///1: 创建签名： 方法名称，谁拥有它，和方法的调用没有关系
    NSMethodSignature *signature = [UIViewController instanceMethodSignatureForSelector:@selector(call)];
    
    /// 2: 创建对应的参数信息
    
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    invocation.target = self;
    invocation.selector = @selector(call);
    NSString *number = @"1246";
    
    /// self and ——cmd 0-1 已经被占用
    
    [invocation setArgument:&number atIndex:0];
    /// 开始调用
    [invocation invoke];
    return  invocation;
}

- (void)call {
    
}
-(void)callWithNumber:(NSString *)number andConntent: (NSString *)conntString {
    
}
@end
