//
//  GridViewCell.h
//  ExpandingGrid
//
//  Created by Greg on 11/05/2011.
//  Copyright 2011 gregprice.co.uk. All rights reserved.
//
//  apply from http://gregprice.co.uk/blog/?p=36

#import <UIKit/UIKit.h>
#import "AQGridViewCell.h"
#import "ASIImageView.h"

@protocol GridViewCellDelegate 
-(void)imageLoaded:(UIImage *)image forCellAtIndex:(NSUInteger)index;
@end

@interface GridViewCell : AQGridViewCell <ASIImageViewDelegate> {
    ASIImageView            *asiImageView;
    NSUInteger              index;
    
    id <GridViewCellDelegate> delegate;
}

@property (nonatomic, retain) ASIImageView *asiImageView;
@property (assign) NSUInteger index;
@property (nonatomic, assign) id <GridViewCellDelegate> delegate;

-(void)loadImageFromString:(NSString *)string;
-(UIImage *)getImage;
-(void)clear;

@end
