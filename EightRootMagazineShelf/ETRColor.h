//
//  PLColor.h
//  PLShelf
//
//  Created by FTC_MAC on 9/9/11.
//  Copyright 2011 neokain@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PLColor : NSObject {

}

+ (UIColor*)UIColorFromRGBString:(id)color;
+ (UIColor*)UIColorFromHex:(int)hex;

@end
