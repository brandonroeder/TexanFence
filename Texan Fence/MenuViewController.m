//
//  ViewController.m
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import "MenuViewController.h"
#import "HomeViewController.h"
#import "SWRevealViewController.h"

@implementation SWUITableViewCell
@end

@implementation MenuViewController

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    // configure the destination view controller:
    if ( [segue.destinationViewController isKindOfClass: [HomeViewController class]] &&
        [sender isKindOfClass:[UITableViewCell class]] )
    {
        UILabel* c = [(SWUITableViewCell *)sender label];
        HomeViewController* cvc = segue.destinationViewController;
        
        cvc.color = c.textColor;
        cvc.text = c.text;
    }
    
    // configure the segue.
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] )
    {
        SWRevealViewControllerSegue* rvcs = (SWRevealViewControllerSegue*) segue;
        
        SWRevealViewController* rvc = self.revealViewController;
        NSAssert( rvc != nil, @"oops! must have a revealViewController" );
        
        NSAssert( [rvc.frontViewController isKindOfClass: [UINavigationController class]], @"oops!  for this segue we want a permanent navigation controller in the front!" );
        
        rvcs.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:dvc];
            [rvc pushFrontViewController:nc animated:YES];
        };
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    switch ( indexPath.row )
    {
        case 0:
            CellIdentifier = @"Home";
            break;
            
        case 1:
            CellIdentifier = @"Services";
            break;
            
        case 2:
            CellIdentifier = @"Gallery";
            break;
        case 3:
            CellIdentifier = @"Specials";
            break;
        case 4:
            CellIdentifier = @"Quote";
            break;
        case 5:
            CellIdentifier = @"Contact";
            break;
            
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    
    return cell;
}

@end
