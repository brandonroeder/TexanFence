//
//  ServicesViewController.h
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ServicesViewController : UITableViewController
@property (nonatomic, strong) IBOutlet UILabel* label;
@property (nonatomic, strong) UIColor* color;
@property (nonatomic, strong) NSString* text;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
