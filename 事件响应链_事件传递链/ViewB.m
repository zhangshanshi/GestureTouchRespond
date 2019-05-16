//
//  UIViewB.m
//  事件响应链_事件传递链
//
//  Created by zhangYan on 2019/5/16.
//  Copyright © 2019年 zhangYan. All rights reserved.
//

#import "ViewB.h"

@implementation ViewB

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(testTAp:)];
//        [self addGestureRecognizer:tap];
        tap.cancelsTouchesInView = NO;
        UIButton *ff = [[UIButton alloc]initWithFrame:CGRectMake(40, 10, 100, 40)];
        ff.backgroundColor = [UIColor blackColor];
        [self addSubview:ff];
        [ff addTarget:self action:@selector(butTap:) forControlEvents:UIControlEventTouchUpInside];
        
//        UITextField
//        UITextView
    }
    return self;
}
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    return NO;
//}
- (void)butTap:(UIButton *)sender
{
    NSLog(@"ViewB UIButton");
}
- (void)testTAp:(UITapGestureRecognizer *)sender
{
    NSLog(@"ViewB UITapGestureRecognizer");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from ViewB touchesBegan");
    
//    [super touchesBegan:touches withEvent:event];
//    UIResponder * next = [self nextResponder];
//    NSMutableString * prefix = @"".mutableCopy;
//    
//    while (next != nil) {
//        NSLog(@"%@%@", prefix, [next class]);
//        [prefix appendString: @"--"];
//        next = [next nextResponder];
//    }
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from ViewB touchesMoved");
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from ViewB touchesEnded");
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from ViewB touchesCancelled");
}
@end
