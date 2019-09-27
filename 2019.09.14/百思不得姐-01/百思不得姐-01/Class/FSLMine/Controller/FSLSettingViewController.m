//
//  FSLSettingViewController.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/15.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLSettingViewController.h"

@interface FSLSettingViewController ()

@end

@implementation FSLSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)getCacheSize {
    NSUInteger size = 0;
    
    
    NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    /// 拼接MP3 MP4 路径
    NSString *dirpath = [ cachesPath stringByAppendingString:@"MP3"];
    
    /// 文件管理者 看一下文件内容
    
    NSFileManager *mgr = [NSFileManager defaultManager];
    NSDictionary *attrs = [mgr attributesOfItemAtPath:dirpath error:nil];
    
    /// 如果想要获取文件夹大小，需要获得文件夹中所有文件的大小
    
    [mgr contentsOfDirectoryAtPath:dirpath error:nil]; /// 只拿到当前文件夹下的东西
   NSArray *subpaths =  [mgr subpathsAtPath:dirpath]; /// h获取文件夹所有的东西
    
    /// 累加文件的大小
    for (NSString *subpath in subpaths) {
        /// 1: 获取全旅行
        NSString *fullSubPath = [dirpath stringByAppendingString:subpath];
        
        ///2: 文件属性
        NSDictionary *attre= [mgr attributesOfItemAtPath:fullSubPath error:nil];
        
        /// 3:累计计算的文件大小
//        size += [attre[NSFileSize] unsignedIntegerValue];  或者
        size = attre.fileSize;
        
    }
    
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
