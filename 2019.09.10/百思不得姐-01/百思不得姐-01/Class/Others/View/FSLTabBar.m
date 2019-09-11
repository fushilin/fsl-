//
//  FSLTabBar.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/10.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "FSLTabBar.h"

@interface FSLTabBar()

@property (nonatomic , weak) UIButton *publishButton;

@end


@implementation FSLTabBar

/// 1：懒加载对应的vie

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [ super initWithFrame:frame]) {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    }
    return  self;
}

-(UIButton *)publishButton {
    if (!_publishButton) {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        publishButton.backgroundColor = [UIColor redColor];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateHighlighted];
        
        publishButton.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        
        publishButton.center = CGPointMake(self.frame.size.width * 0.5 , self.frame.size.height * 0.5);
        
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    return _publishButton;
    
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    /// 计算尺寸
    CGFloat buttonW = self.fsl_width/5;
    CGFloat buttonH = self.fsl_height;
    CGFloat buttonY = 0;
    int buttonIndex = 0;
    
    for (UIView *subview in self.subviews) {
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue ;
       CGFloat buttonX = buttonIndex * buttonW ;
        if (buttonIndex >= 2 ){
            buttonX += buttonW;
            
        }
     
        subview.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        buttonIndex ++ ;
    }
    
    self.publishButton.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.publishButton.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
}

-(void)publishClick {
    FSLLog(@"dayin");
}

@end
