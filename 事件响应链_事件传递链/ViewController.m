//
//  ViewController.m
//  事件响应链_事件传递链
//
//  Created by zhangYan on 2019/5/16.
//  Copyright © 2019年 zhangYan. All rights reserved.
//

#import "ViewController.h"
#import "ViewA.h"
#import "ViewB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ViewA *A_V = [[ViewA alloc]initWithFrame:CGRectMake(80, 100, 240, 400)];
    A_V.backgroundColor = [UIColor brownColor];
    [self.view addSubview:A_V];
    ViewB *B_V = [[ViewB alloc]initWithFrame:CGRectMake(100, 350, 200, 300)];
    B_V.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:B_V];
//    B_V.userInteractionEnabled = NO;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(testTAp:)];
    [self.view addGestureRecognizer:tap];
    tap.cancelsTouchesInView = NO;
}
- (void)testTAp:(UITapGestureRecognizer *)sender
{
    NSLog(@"UITapGestureRecognizer");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from controller touchesBegan");
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from controller touchesMoved");
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from controller touchesEnded");
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I am from controller touchesCancelled");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
