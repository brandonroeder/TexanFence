//
//  QuoteViewController.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/20/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "QuoteViewController.h"
#import "FXForms.h"
#import "MyForm.h"

@implementation QuoteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Send" style:UIBarButtonItemStyleBordered target:self action:@selector(pressedDone:)];
    self.navigationController.navigationBar.topItem.rightBarButtonItem = doneButton;
    [self.doneButton setTintColor:[UIColor whiteColor]];
    self.formController = [[FXFormController alloc] init];
    self.formController.tableView = self.tableView;
    self.formController.delegate = self;
    self.formController.form = [[MyForm alloc] init];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Send" style:UIBarButtonItemStyleBordered target:self action:@selector(pressedDone:)];
    self.navigationController.navigationBar.topItem.title = @"Request a Quote";
    self.navigationController.navigationBar.topItem.rightBarButtonItem = doneButton;
    [self.doneButton setTintColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    self.navigationController.navigationBar.topItem.titleView = nil;

    [self.tableView reloadData];
}

- (void)pressedDone:(id)sender
{
    MyForm *form = _formController.form;

    /* create mail subject */
    NSString *subject = @"Fence Quote";
    
    /* define email address */
    NSString *mail = @"texanfence1@sbcglobal.net";
    
    NSString *name = form.name;
    
    NSString *city= form.city;
    
    NSString *phone =form.phone;
    
    NSString *description =form.description;
    
    NSString *zip = form.zip;
    
    NSString *build = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
    
    if([build characterAtIndex:[build length] - 1] == '.')
    {
        NSRange subRange = NSMakeRange(0, [build length] - 1);
        build = [build substringWithRange:subRange];
    }
    
    NSString *message = [NSString stringWithFormat:@"Name: %@\nCity: %@\nZip: %@\nPhone: %@\n\n%@", name, city, zip, phone, description];
    
    
    NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"mailto:?to=%@&subject=%@&body=%@",
                                                [mail stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],
                                                [subject stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],
                                                [message stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding]]];

    if (form.name == nil || form.city == nil || form.phone == nil || form.description == nil || form.zip == nil)
    {
        [self showAlert];
    }
    else
    {
    [[UIApplication sharedApplication] openURL:url];
    }

}


- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)showAlert
{
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Error" message:@"Please fill out all of the fields" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display Alert Message
    [messageAlert show];

}

@end
