//
//  FSLViewController.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/9.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLViewController.h"

@interface FSLViewController ()

@end

@implementation FSLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
   

    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highSelctImage:@"MainTagSubIconClick" andTarget:self andAciton:@selector(pressLeftAction)];    
}
-(void)pressLeftAction {
    FSLLog(@"dian");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[[FSLTextViewController alloc]init] animated:true];
    
}
@end
