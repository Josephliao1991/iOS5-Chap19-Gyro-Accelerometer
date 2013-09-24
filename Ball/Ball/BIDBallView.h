//
//  BIDBallView.h
//  Ball
//
//  Created by Maria Alice C. Lim on 9/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
@interface BIDBallView : UIView
@property (strong, nonatomic) UIImage *image;
@property CGPoint currentPoint;
@property CGPoint previousPoint;
@property (assign, nonatomic) CMAcceleration acceleration;
@property CGFloat ballXVelocity;
@property CGFloat ballYVelocity;
- (void)update;
@end
