//
//  GridViewCell.m
//  ExpandingGrid
//
//  Created by Greg on 11/05/2011.
//  Copyright 2011 gregprice.co.uk. All rights reserved.
//
//  apply from http://gregprice.co.uk/blog/?p=36

#import "GridViewCell.h"

@implementation GridViewCell

@synthesize asiImageView;
@synthesize index;
@synthesize delegate;

#define kBorderWidth 0


-(id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)aReuseIdentifier 
{
	if ((self = [super initWithFrame:frame reuseIdentifier:aReuseIdentifier])) 
    {
        asiImageView = [[ASIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 154.0, 188.0)];
        asiImageView.imageView.contentMode = UIViewContentModeScaleAspectFill;
        asiImageView.imageView.clipsToBounds = YES;
        asiImageView.delegate = self;
        
        self.selectionStyle = AQGridViewCellSelectionStyleNone;
        [self.contentView addSubview:asiImageView];
	}
    return self;
}

-(void)loadImageFromString:(NSString *)string 
{
    [asiImageView loadImageFromString:string];
}

-(void)imageLoaded:(UIImage *)image 
{
    [delegate imageLoaded:asiImageView.imageView.image forCellAtIndex:self.index];
}

-(UIImage *)getImage 
{
    return asiImageView.imageView.image;
}

-(void)clear 
{
    [asiImageView clear];
}

-(void)dealloc 
{
    [asiImageView release];
    [super dealloc];
}

@end
