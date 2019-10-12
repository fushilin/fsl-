//
//  EhaViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "EhaViewController.h"


#define FileName @"gg.mp4"

@interface EhaViewController ()<NSURLSessionDelegate,NSURLSessionDataDelegate>

/**<#type#>*/
@property(nonatomic,strong)  NSOutputStream *stream ;

/**<#type#>*/
@property(nonatomic,assign) NSInteger  totalLength ;


@end

@implementation EhaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *caches = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    
    NSString *fullPath = [caches stringByAppendingPathComponent:@""];
    
    ///  去文件中查找信息
    NSFileManager *manger = [NSFileManager defaultManager];
    
    NSDictionary *dict = [manger attributesOfFileSystemForPath:fullPath error:nil];
    
    /// 看第一次数据是什么
    NSInteger fileSize = dict[@"NSFileSize"];
    
    
    
    
    
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

-(void)URLSession:(NSURLSession *)session didBecomeInvalidWithError:(NSError *)error {
    
}

-(void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler {
//    self.totalLength = r
    
}

/**
 拿到多次，随时调用
 */
-(void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data {
    /// 写文件
    [self.stream write:data.bytes maxLength:data.length];
}
-(void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(NSURLResponse *)response completionHandler:(void (^)(NSURLSessionResponseDisposition))completionHandler {
    
    
    /// 信息处理
    
    /// 拿到文件大小
    self.totalLength = response.expectedContentLength ;
    
    NSString *caches = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    
    NSString *fullPath = [caches stringByAppendingPathComponent:@""];
    
    /// 1: 创建输出流c 如果没有文件，那么就会创建
    NSOutputStream *stream =  [[NSOutputStream alloc] initToFileAtPath:fullPath append:YES];
    
    
    completionHandler(NSURLSessionResponseAllow);
}

///离线断点下载



/// 断点下载信息

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
