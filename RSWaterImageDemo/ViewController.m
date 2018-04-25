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
@property (weak, nonatomic) IBOutlet UIImageView *xibImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _xibImageView.image = [RSWaterImage setOnImage:[UIImage imageNamed:@"scenes"] waterImageName:@"iconLogo"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
