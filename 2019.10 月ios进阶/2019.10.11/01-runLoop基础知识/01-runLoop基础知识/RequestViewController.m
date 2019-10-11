//
//  RequestViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "RequestViewController.h"

@interface RequestViewController ()

@end

@implementation RequestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSURL *url = @"";
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
//    [NSURLConnection sendSynchronousRequest:request returningResponse:(NSURLResponse *__autoreleasing  _Nullable * _Nullable) error:(NSError * _Nullable __autoreleasing * _Nullable)];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        
        /// 创建请求对象
        if (connectionError) {
            
        }else {
            /// 执行对应的方法内容
            
            
        }
        
        
        
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)secssion {
    

    
}
@end
