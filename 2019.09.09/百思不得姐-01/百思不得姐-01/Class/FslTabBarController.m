//
//  FslTabBarController.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/9.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FslTabBarController.h"

@interface FslTabBarController ()

@end

@implementation FslTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    ///1.1   调用apperance方法
    
    UITabBarItem *item = [UITabBarItem  appearance];
    
    
    ///2.1  设置本来样式色值 NSForegroundColorAttributeName
    NSMutableDictionary *normalDict = [NSMutableDictionary dictionary];
    normalDict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalDict[NSForegroundColorAttributeName] = [UIColor grayColor];
      [item setTitleTextAttributes:normalDict forState:UIControlStateNormal];
    /// 2.2 设置选中样式的类型
    NSMutableDictionary *selectDict = [NSMutableDictionary dictionary];
    selectDict[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectDict forState:UIControlStateSelected];

    /// 创建子控制器
    

    [self setUp:[[UIViewController alloc] init ] title:@"首页"
          image:@"tabBar_essence_icon"
            andSelectImage:@"tabBar_essence_click_icon"];
    
    /// 添加第二个j控制器

    
    /// 创建跟试图控制器
        [self setUp:[[UIViewController alloc] init ] title:@"我的"
                image:@"tabBar_essence_icon"
                andSelectImage:@"tabBar_essence_click_icon"];
    
    // Do any additional setup after loading the view.
}


/// 4： 添加子控制器
-(void)setUp:(UIViewController *)vc title:(NSString *)title  image:(NSString *)imageString andSelectImage:(NSString *)selectImageString {
    
    UIViewController *vc2 = vc;
    vc2.tabBarItem.title = title;
    vc2.tabBarItem.image = [UIImage imageNamed:imageString];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:selectImageString];
    vc2.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc2];
    
    
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
