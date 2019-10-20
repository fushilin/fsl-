//
//  SearchViewController.m
//  02-getSettrer
//
//  Created by 我演示 on 2019/10/19.
//  Copyright © 2019 Jerry-Fu. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.grayColor ;
    
    
    
    ///添加searc
    UISearchBar *search = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 180, 100)];
    
    search.placeholder = @"搜索";
    
//    search.clipsToBounds = true;
    [search setShowsCancelButton:YES];
    search.backgroundColor = UIColor.redColor;
    
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 768, 100)];
    searchView.backgroundColor = [UIColor blueColor];
    [searchView addSubview:search];
    
    self.navigationItem.titleView = searchView;
    
    NSLog(@"--------%lf",self.navigationItem.titleView.frame.size.height);
    
    
    
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
