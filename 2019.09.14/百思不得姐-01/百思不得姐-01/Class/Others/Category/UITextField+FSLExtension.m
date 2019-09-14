//
//  UITextField+FSLExtension.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "UITextField+FSLExtension.h"

// 对应值信息
/**
 对应值信息
 */
static NSString *const FSLPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (FSLExtension)

/// 赋值和取值信息

-(void)setPlaceholderColor:(UIColor *)placeholderColor {
    
//    [self ]
    /// 懒加载属性，目的，让可以提前设置对应的信息 他还需要判断长度信息 但是这种，会破坏现场
    /**
     if (self.placeholder.length ==0 ){
     self.placeholder = @" ";
     }
     
     self.placeholder = @"" ;
     */
    
    NSString *oldPlaceholder = self.placeholder ;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    // 如果站位颜色为空，那么只能恢复一定的颜色
    if (placeholderColor == nil ){
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.3980392 alpha:0.21];
    }

    [self setValue:placeholderColor forKeyPath:FSLPlaceholderColorKey];
}

-(UIColor *)placeholderColor {
    return  [self valueForKeyPath:@""];
}
@end
