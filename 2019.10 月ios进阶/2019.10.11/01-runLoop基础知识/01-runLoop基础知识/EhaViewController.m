//
//  EhaViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "EhaViewController.h"

@interface EhaViewController ()

@end

@implementation EhaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    /**
     根据回话对象来创建task 信息
     第二个参数， complet
     */
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@""]];
    
 NSURLSessionDataTask *dataTask =  [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        ///时间处理问题
        
    }];
    
    ///3: 启动任务
    [dataTask resume ];
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
