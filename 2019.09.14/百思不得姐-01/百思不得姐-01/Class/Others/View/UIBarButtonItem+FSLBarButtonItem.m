//
//  UIBarButtonItem+FSLBarButtonItem.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "UIBarButtonItem+FSLBarButtonItem.h"

@implementation UIBarButtonItem (FSLBarButtonItem)
+(instancetype)itemWithImage:(NSString *)image highSelctImage:(NSString *)selectImage andTarget:(id)target  andAciton:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    return [[self alloc] initWithCustomView:btn];
    
}
@end
