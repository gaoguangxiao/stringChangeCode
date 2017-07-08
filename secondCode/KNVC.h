//
//  KNVC.h
//  secondCode
//
//  Created by lgx on 15/10/30.
//  Copyright © 2015年 意能行. All rights reserved.
//


#import <UIKit/UIKit.h>//导入UIKit 是因为UIImage出自UI框架

@interface KNVC : UIViewController
+(UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size ;
//相应字符串转化成CIimage
+(CIImage *)createQRForString:(NSString *)qrString ;
//因为生成的二维码是黑白，填充二维码为
+(UIImage*)imageBlackToTransparent:(UIImage*)image withRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
@end
