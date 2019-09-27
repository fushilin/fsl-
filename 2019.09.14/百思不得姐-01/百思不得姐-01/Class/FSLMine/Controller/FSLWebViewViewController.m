//
//  FSLWebViewViewController.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLWebViewViewController.h"

@interface FSLWebViewViewController ()<UIWebViewDelegate>

/**<#type#>*/
@property(nonatomic,strong) UIWebView *webView;

@end

@implementation FSLWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void)loadView {
    [self.webView  goForward ];
    
    self.view.fsl_x
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    
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
