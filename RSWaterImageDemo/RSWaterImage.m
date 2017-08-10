//
//  RSWaterImage.m
//  RSWaterImageDemo
//
//  Created by WhatsXie on 2017/8/10.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "RSWaterImage.h"

@implementation RSWaterImage
+ (UIImage *)setWaterImageWith:(NSString *)imageName waterName:(NSString *)logo {
    UIImage *imageExample = [UIImage imageNamed:imageName];
    //创建基于位图的图形上下文
    UIGraphicsBeginImageContextWithOptions(imageExample.size, NO, 0.0);
    
    //图片水印
    //画背景,给图片创建一个可以显示的地方，添加到上下文中
    [imageExample drawInRect:CGRectMake(0, 0, imageExample.size.width, imageExample.size.height)];
    
    //设置水印的大小方位，以及将水印上下文保存
    UIImage *water = [UIImage imageNamed:logo];
    [water drawInRect:CGRectMake(imageExample.size.width - 60, imageExample.size.height - 60, 60, 50)];
    
    //从图形上下文中获取制作完毕的图像
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束上下文，相当于内存释放
    UIGraphicsEndImageContext();
    
    //将image对象压缩为PNG格式的二进制数据
    NSData *data = UIImagePNGRepresentation(newImage);
    
    //写入文件,h获取沙盒路径方法
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"WaterImage.png"];
    [data writeToFile:path atomically:YES];
    NSLog(@"asasd = %@",path);
    
    return newImage;
}
@end
