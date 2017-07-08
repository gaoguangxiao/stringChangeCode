//
//  ViewController.m
//  secondCode
//
//  Created by lgx on 15/10/30.
//  Copyright © 2015年 意能行. All rights reserved.
//

#import "ViewController.h"
#import "KNVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *content=@"高广校";
    
    UIImage *qrcode = [KNVC createNonInterpolatedUIImageFormCIImage:[KNVC createQRForString:content] withSize:250.0f];
    
    UIImage *customQrcode = [KNVC imageBlackToTransparent:qrcode withRed:60.0f andGreen:74.0f andBlue:89.0f];
//    [UIColor colorWithRed:0.343 green:1.000 blue:0.273 alpha:1.000];
    
    UIImageView *imageview=[[UIImageView alloc]init];
    imageview.frame=CGRectMake(50, 100, 200, 200);
    imageview.image=customQrcode;
    imageview.layer.shadowOffset = CGSizeMake(0, 2);
    imageview.layer.shadowRadius = 2;
    imageview.layer.shadowColor = [UIColor blackColor].CGColor;
    imageview.layer.shadowOpacity = 0.5;

    [self.view addSubview:imageview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
