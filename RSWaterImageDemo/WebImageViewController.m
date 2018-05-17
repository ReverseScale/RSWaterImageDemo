//
//  WebImageViewController.m
//  RSWaterImageDemo
//
//  Created by WhatsXie on 2018/5/17.
//  Copyright © 2018年 StevenXie. All rights reserved.
//

#import "WebImageViewController.h"
#import "RSWaterImage.h"

@interface WebImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *xibImageView;

@end

@implementation WebImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageWithData:[NSData
                                           dataWithContentsOfURL:[NSURL URLWithString:@"http://i1.bvimg.com/646104/087ac8e08edb9039.png"]]];
    _xibImageView.image = [RSWaterImage setOnImage:img waterImageName:@"iconLogo"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
