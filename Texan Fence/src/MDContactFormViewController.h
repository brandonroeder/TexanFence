//
//  MDContactFormViewController.h
//  Part of MDContactForm
//
//  Created by Mike Dougherty on 8/3/2012.
//  Copyright (c) 2012 Mike Dougherty. All rights reserved.
//
//  Latest code available here:
//  https://github.com/mikecheckDev/MDContactForm
//
//  For questions/support contact me here:
//  mike@mikecheck.net or http://mikecheck.net

#import <UIKit/UIKit.h>

@interface MDContactFormViewController : UIViewController {

    IBOutlet UIScrollView *scrollView;
    IBOutlet UIView *contentView;
}

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButton;

@end
