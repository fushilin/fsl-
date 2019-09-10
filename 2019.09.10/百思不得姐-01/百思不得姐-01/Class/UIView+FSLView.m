//
//  UIView+FSLView.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/10.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "UIView+FSLView.h"

@implementation UIView (FSLView)

-(CGFloat)width{
    return  self.frame.size.width;
}
-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}



-(CGFloat)fsl_height {
    return self.f
}

@end
