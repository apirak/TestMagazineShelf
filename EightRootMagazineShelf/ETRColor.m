//
//  PLColor.m
//  PLShelf
//
//  Created by FTC_MAC on 9/9/11.
//  Copyright 2011 neokain@gmail.com. All rights reserved.
//

#import "PLColor.h"

//RGB color macro
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//RGB color macro with alpha
#define UIColorFromRGBWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

@implementation PLColor

+ (UIColor*)UIColorFromRGBString:(id)color 
{
    NSString* pString = color;
    NSScanner* pScanner = [NSScanner scannerWithString: pString];
    
    unsigned int iValue;
    [pScanner scanHexInt: &iValue];
    
    return UIColorFromRGB(iValue);
}

+ (UIColor*)UIColorFromHex:(int)hex {
    return UIColorFromRGB(hex);
}

@end
