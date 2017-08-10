# RSWaterImageDemo
OC 图片加水印方法

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-3.7MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

之前有写过 Swift 版的加水印、打码等图片操作的封装，今天用 OC 重新实现一下。

| 名称 |1.列表页 |2.展示页 |
| ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-10/40184510.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-10/37541756.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 加水印展示 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.支持存储
* 4.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 引入头文件
```Objective-C
#import "RSWaterImage.h"
```
### 第二步 简单调用
```Objective-C
UIImage *image =[RSWaterImage setWaterImageWith:@"scene" waterName:@"IconLogo"];

UIImageView *iconView = [[UIImageView alloc] initWithFrame:self.view.bounds];
[self.view addSubview:iconView];
iconView.image = image;
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSWaterImageDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
