//
//  HomeDetailViewController.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/25/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "HomeDetailViewController.h"

@implementation HomeDetailViewController

- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarButtonItemStyleBordered target:self action:@selector(Back)];
    self.navigationItem.leftBarButtonItem = backButton;
    backButton.tintColor= [UIColor whiteColor];
    self.view.backgroundColor = [UIColor colorWithRed:0.401 green:0.440 blue:0.446 alpha:1.000];


}

- (IBAction)Back
{
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
