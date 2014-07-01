//
//  HoursModalViewController.m
//  Popping
//
//  Created by Brandon Roeder on 6/25/14
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import "HoursModalViewController.h"
#import "UIColor+CustomColors.h"

@interface HoursModalViewController()
- (void)addDismissButton;
- (void)dismiss:(id)sender;
@end

@implementation HoursModalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:[NSDate date]];
    NSInteger currentHour = [components hour];
    if ((currentHour > 8) && (currentHour <18))
    {
        self.view.backgroundColor = [UIColor customGreenColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor customRedColor];

    }
    NSString *info = [NSString stringWithFormat:@"Mon:\n"
                      "Tues:\n"
                      "Wed:\n"
                      "Thurs:\n"
                      "Fri:\n"
                      "Sat:\n"];
    NSString *hours = [NSString stringWithFormat:@"8:00am-5:00pm\n"
                      "8:00am-5:00pm\n"
                      "8:00am-5:00pm\n"
                      "8:00am-5:00pm\n"
                      "8:00am-5:00pm\n"
                      "9:00am-3:00pm\n"];

    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 20, 70,200)];
    UITextView *hoursTextView = [[UITextView alloc] initWithFrame:CGRectMake(70, 20, 140,200)];

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:textView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.f
                                                           constant:0.f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:hoursTextView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.f
                                                           constant:0.f]];

    textView.backgroundColor= [UIColor clearColor];
    textView.textColor= [UIColor whiteColor];
    textView.font = [UIFont fontWithName:@"Avenir" size:18];
    textView.editable = NO;
    [textView insertText:info];
    hoursTextView.backgroundColor= [UIColor clearColor];
    hoursTextView.textColor= [UIColor whiteColor];
    hoursTextView.font = [UIFont fontWithName:@"Avenir" size:18];
    hoursTextView.editable = NO;
    [hoursTextView insertText:hours];
    
//    textView.text= @"Mon:  8:00am-5:00pm\nTues:  8:00am-5:00pm\nWed:  8:00am-5:00pm\nThur:  8:00am-5:00pm\nFri:  8:00am-5:00pm\nSat: 9:00am-3:00pm\nOr by appointment";
    [self.view addSubview:textView];
    [self.view addSubview:hoursTextView];
    self.view.layer.cornerRadius = 8.f;
    [self addDismissButton];
}

#pragma mark - Private Instance methods

- (void)addDismissButton
{
    UIButton *dismissButton = [UIButton buttonWithType:UIButtonTypeSystem];
    dismissButton.translatesAutoresizingMaskIntoConstraints = NO;
    dismissButton.tintColor = [UIColor whiteColor];
    dismissButton.titleLabel.font = [UIFont fontWithName:@"Avenir" size:20];
    [dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
    [dismissButton addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissButton];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:dismissButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.f
                                                           constant:0.f]];

    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:[dismissButton]-|"
                               options:0
                               metrics:nil
                               views:NSDictionaryOfVariableBindings(dismissButton)]];
}

- (void)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
