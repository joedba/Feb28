//
//  Feb28AppDelegate.h
//  Feb28
//
//  Created by Joe Gabela on 2/24/13.
//  Copyright (c) 2013 Joe Gabela. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

  @interface Feb28AppDelegate : UIResponder <UIApplicationDelegate>
{
  View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
