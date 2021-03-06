//
//  BIDViewController.m
//  ShakeAndBreak - MotionMethods
//
//  Created by Maria Alice C. Lim on 9/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface BIDViewController ()
@property (assign, nonatomic) BOOL brokenScreenShowing;
@property (assign, nonatomic) SystemSoundID soundID;
@property (strong, nonatomic) UIImage *fixed;
@property (strong, nonatomic) UIImage *broken;
@end

@implementation BIDViewController
@synthesize brokenScreenShowing;
@synthesize fixed;
@synthesize broken;
@synthesize soundID;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"glass"
                                         withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url,
                                     &soundID);
    self.fixed = [UIImage imageNamed:@"home.png"];
    self.broken = [UIImage imageNamed:@"homebroken.png"];
    
    self.imageView.image = self.fixed;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event;
{
    if (!self.brokenScreenShowing) {
        self.imageView.image = self.broken;
        AudioServicesPlaySystemSound(self.soundID);
        self.brokenScreenShowing = YES;
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.imageView.image = self.fixed;
    self.brokenScreenShowing = NO;
}
@end
