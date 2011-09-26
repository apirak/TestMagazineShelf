//
//  ASIImageView.h
//  ExpandingGrid
//
//  Created by Greg on 26/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
//  apply from http://gregprice.co.uk/blog/?p=36

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"

@protocol ASIImageViewDelegate
-(void)imageLoaded:(UIImage *)image;
@end

@interface ASIImageView : UIView {
    
    UIImageView             *imageView;
    UIActivityIndicatorView *activityIndicator;   
	ASIHTTPRequest          *request;
    
    id <ASIImageViewDelegate> delegate;
}

@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;
@property (nonatomic, assign) id <ASIImageViewDelegate> delegate;

-(void)loadImageFromString:(NSString *)string;
-(void)clear;

@end
