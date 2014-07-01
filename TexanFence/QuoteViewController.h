//
//  QuoteViewController.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/20/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXForms.h"

@interface QuoteViewController : UIViewController <FXFormControllerDelegate,UINavigationBarDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIView *view;
@property (nonatomic, strong) FXFormController *formController;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

