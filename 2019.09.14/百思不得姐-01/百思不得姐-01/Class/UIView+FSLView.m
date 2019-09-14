//
//  UIView+FSLView.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/10.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "UIView+FSLView.h"

@implementation UIView (FSLView)

-(CGFloat)fsl_width {
    return self.frame.size.width;
}

-(void)setFsl_width:(CGFloat)fsl_width
{
    CGRect frame = self.frame;
    frame.size.width = fsl_width;
    self.frame = frame;
    
    
}



-(CGFloat)fsl_height {
    return self.frame.size.height;
}

-(void)setFsl_height:(CGFloat)fsl_height {
    CGRect frame = self.frame ;
    frame.size.height = fsl_height;
    self.frame = frame;
}

-(CGFloat)fsl_x {
    return  self.center.x;
}

-(void)setFsl_x:(CGFloat)fsl_x {
    CGPoint center = self.center ;
    center.x = fsl_x ;
    self.center = center;
}

-(CGFloat)fsl_y {
    return self.center.y ;
}

-(void)setFsl_y:(CGFloat)fsl_y {
    CGPoint  center = self.center ;
    center.y = fsl_y ;
    self.center = center ;
}

-(CGFloat)fsl_right
{
    return  CGRectGetMaxX(self.frame);
}
-(void)setFsl_right:(CGFloat)fsl_right {
    self.fsl_x = fsl_right - self.fsl_width;
    
}

-(CGFloat)fsl_bottom
{
    return  CGRectGetMaxY(self.frame);
}
-(void)setFsl_bottom:(CGFloat)fsl_bottom
{
    self.fsl_y = fsl_bottom - self.fsl_height ;
}

@end
