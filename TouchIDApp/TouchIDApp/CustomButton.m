//
//  CustomButton.m
//  TouchIDApp
//
//  Created by Tensab San on 8/29/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import "CustomButton.h"
IB_DESIGNABLE

@implementation CustomButton {
    IBInspectable UIColor *color;
    IBInspectable UIImage *image;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    //[color setFill];
    //[path fill];
    
    //UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [image drawInRect:rect];
    //[self addSubview:imageView];
    
}


@end
