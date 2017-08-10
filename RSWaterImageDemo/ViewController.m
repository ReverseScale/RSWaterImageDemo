//
//  ViewController.m
//  RSWaterImageDemo
//
//  Created by WhatsXie on 2017/8/10.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"
#import "RSWaterImage.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupWaterImage];
}

- (void)setupWaterImage {
    UIImage *image =[RSWaterImage setWaterImageWith:@"scenes" waterName:@"iconLogo"];
    
    UIImageView *iconView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 330, 260)];
    [self.view addSubview:iconView];
    iconView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
