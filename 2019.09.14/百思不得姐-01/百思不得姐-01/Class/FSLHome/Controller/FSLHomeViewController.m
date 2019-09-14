//
//  FSLHomeViewController.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLHomeViewController.h"

@interface FSLHomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation FSLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  3;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {return 1;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *idIntefer = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idIntefer];
    
    if(indexPath.section == 0 ) {
        cell.textLabel.text = @"" ;
        cell.imageView.image = nil ;
    }else {
        cell.imageView.image = [UIImage imageNamed:@""];
        /// 需要进行清空的操作，cell的信息处理
    }
    
    
    return  cell;
    
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
