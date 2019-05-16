//
//  ViewA.m
//  事件响应链_事件传递链
//
//  Created by zhangYan on 2019/5/16.
//  Copyright © 2019年 zhangYan. All rights reserved.
//

#import "ViewA.h"

@implementation ViewA

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from ViewA");
}
@end
