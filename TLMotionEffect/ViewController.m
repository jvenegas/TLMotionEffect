//
//  ViewController.m
//  TLMotionEffect
//
//  Created by FJ Venegas on 02/01/2014.
//  Copyright (c) 2014 tefetaLabs. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TLMotionEffect.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Test" message:@"Move the phone" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil, nil];
    [alertView addCenterMotionEffectsXYWithOffset:40];
    [alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
