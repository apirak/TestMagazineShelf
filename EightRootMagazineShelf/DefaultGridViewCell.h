//
//  DefaultGridViewCell.h
//  PLShelf
//
//  Created by Phuwanart Larpmark on 8/22/54 BE.
//  Copyright 2554 neokain@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AQGridViewCell.h"

@interface DefaultGridViewCell : AQGridViewCell
{
    UIImageView *_imageView;
}
@property (nonatomic, retain) UIImage *image;
@end
