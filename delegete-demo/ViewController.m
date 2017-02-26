//
//  ViewController.m
//  delegete-demo
//
//  Created by 周亚-Sun on 2017/2/26.
//  Copyright © 2017年 zhouya. All rights reserved.
//
#define ZYSCREENWIDTH self.view.frame.size.width
#define ZYSCREENHEIGHT self.view.frame.size.height
#import "ViewController.h"

@interface ViewController ()

/**
 显示标签
 */
@property(strong,nonatomic)UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(ZYSCREENWIDTH/2-100, 150, 200, 150)];
    
    label.textColor=[UIColor blackColor];
    label.backgroundColor=[UIColor yellowColor];
    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];
    self.showLabel=label;
    
    UIButton *clickButton=[[UIButton alloc]initWithFrame:CGRectMake(ZYSCREENWIDTH/2-50, ZYSCREENHEIGHT-300, 100, 100)];
    clickButton.backgroundColor=[UIColor redColor];
    clickButton.layer.cornerRadius=50;
    [clickButton addTarget:self action:@selector(clickTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickButton];
    
    
}
///点击按钮事件
-(void)clickTap:(UIButton *)sender{
    ZYTableViewController *tableViewController=[[ZYTableViewController alloc]init];
    tableViewController.delegate=self;
    [self.navigationController pushViewController:tableViewController animated:YES];
}
-(void)passValue:(NSString *)passString{
    self.showLabel.text=passString;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
