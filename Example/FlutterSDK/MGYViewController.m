//
//  MGYViewController.m
//  FlutterSDK
//
//  Created by 1043225268@qq.com on 07/26/2019.
//  Copyright (c) 2019 1043225268@qq.com. All rights reserved.
//

#import "MGYViewController.h"
#import <Flutter/Flutter.h>

@interface MGYViewController ()

@end

@implementation MGYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame=CGRectMake(100, 100, 100, 40);
}

-(void)btnClick{
    
    FlutterViewController *flutterVc = [[FlutterViewController alloc]init];
    
    [self presentViewController:flutterVc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
