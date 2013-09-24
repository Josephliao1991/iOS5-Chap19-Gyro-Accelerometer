//
//  BIDViewController.h
//  Ball
//
//  Created by Maria Alice C. Lim on 9/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface BIDViewController : UIViewController
@property (strong, nonatomic) CMMotionManager *motionManager;
@end
