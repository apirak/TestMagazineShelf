//
//  EightRootMagazineShelfAppDelegate.h
//  EightRootMagazineShelf
//
//  Created by FTC_MAC on 9/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface EightRootMagazineShelfAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end
