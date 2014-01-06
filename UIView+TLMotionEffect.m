//
//  UIView+TLMotionEffect.m
//  TLMotionEffect
//
//  Created by FJ Venegas on 02/01/2014.
/*
 Copyright (c) 2013 Javier Venegas
 
 Permission is hereby granted, free of charge, to any
 person obtaining a copy of this software and associated
 documentation files (the "Software"), to deal in the
 Software without restriction, including without limitation
 the rights to use, copy, modify, merge, publish,
 distribute, sublicense, and/or sell copies of the
 Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice
 shall be included in all copies or substantial portions of
 the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
 KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
 OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "UIView+TLMotionEffect.h"

NSString *const centerX = @"center.x";
NSString *const centerY = @"center.y";

//#define IS_OS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

@implementation UIView (TLMotionEffect)

- (void)addCenterMotionEffectsXYWithOffset:(CGFloat)offset {
    
//    if(!IS_OS_7_OR_LATER) return;
    if(floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) return;

    UIInterpolatingMotionEffect *xAxis;
    UIInterpolatingMotionEffect *yAxis;
    
    xAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:centerX
                                                            type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    xAxis.maximumRelativeValue = @(offset);
    xAxis.minimumRelativeValue = @(-offset);
    
    yAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:centerY
                                                            type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    yAxis.minimumRelativeValue = @(-offset);
    yAxis.maximumRelativeValue = @(offset);
    
    UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
    group.motionEffects = @[xAxis, yAxis];
    
    [self addMotionEffect:group];
}

@end
