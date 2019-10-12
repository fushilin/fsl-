//
//  PersonViewController.m
//  RunTime-MVVM
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "PersonViewController.h"
#import "Person.h"

@interface PersonViewController ()

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [[Person alloc] init];
    p.eat;

    
    // Do any additional setup after loading the view.
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
