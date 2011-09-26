//
//  ASIImageView.m
//  ExpandingGrid
//
//  Created by Greg on 26/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
//  apply from http://gregprice.co.uk/blog/?p=36

#import "ASIImageView.h"

@implementation ASIImageView

@synthesize imageView;
@synthesize activityIndicator;
@synthesize delegate;


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        
        imageView = [[UIImageView alloc] initWithFrame:frame];
        activityIndicator = [[UIActivityIndicatorView alloc] init];
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        
        CGFloat xPos = frame.size.width *.5;
        CGFloat yPos = frame.size.height *.5;
        CGFloat width = 40;
        CGFloat height = 40;
        activityIndicator.frame = CGRectMake(xPos-20, yPos-20, width, height);
        activityIndicator.hidesWhenStopped = YES;
        
        [self addSubview:imageView];
        [self addSubview:activityIndicator];
    }
    
    return self;
}


-(void)loadImageFromString:(NSString *)string {
    [activityIndicator startAnimating];
	NSURL *url = [NSURL URLWithString:string];
	request = [ASIHTTPRequest requestWithURL:url];
 	request.delegate = self;
	[request startAsynchronous];
}


- (void)requestFinished:(ASIHTTPRequest *)req {
	
    if (request.responseData != nil) {
        [activityIndicator stopAnimating];
        imageView.alpha = 0;
        imageView.image = [UIImage imageWithData:request.responseData];
        [delegate imageLoaded:imageView.image];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:.5];
        imageView.alpha = 1;
        [UIView commitAnimations];        
    }
}


-(void)clear {
    imageView.image = nil;
    request = nil;
    [request cancel];
    [activityIndicator stopAnimating];
}


- (void)dealloc {
    [imageView release];
    [activityIndicator release];
    [request setDelegate:nil];
    [request cancel];
	[request release];
    [super dealloc];
}

@end
