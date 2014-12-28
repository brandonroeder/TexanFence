//
//  ContactViewController.m
//  Texan Fence
//
//  Created by Brandon Roeder on 6/19/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "ContactViewController.h"
#import "ContactTableViewCell.h"
#import "PresentingAnimator.h"
#import "DismissingAnimator.h"
#import "HoursModalViewController.h"


#define METERS_PER_MILE 1609.344

@interface ContactViewController() <UIViewControllerTransitioningDelegate>
@end
@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    self.navigationController.navigationBar.topItem.title = @"Contact";
    self.navigationController.navigationBar.topItem.rightBarButtonItem = nil;
    self.navigationController.navigationBar.topItem.titleView = nil;

    CLLocationCoordinate2D zoomLocation;
    
    //coordinates for office
    zoomLocation.latitude = 29.424703;
    zoomLocation.longitude= -95.234193;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:zoomLocation];
    [annotation setTitle:@"Texan Fence and Construction"]; //You can set the subtitle too
    [self.mapView addAnnotation:annotation];
    [self.mapView selectAnnotation:annotation animated:YES];
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    [_mapView setRegion:viewRegion animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"contactCell";
    ContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UIImage *cellImage;
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit fromDate:[NSDate date]];
    NSInteger currentHour = [components hour];


    if (indexPath.item==0)
    {
        cell.cellLabel.text = @"Like us on Facebook";
        cellImage= [UIImage imageNamed:@"fblike.png"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    
    if (indexPath.item == 1)
    {
        cell.cellLabel.text = @"Follow us on Instagram";
        cellImage= [UIImage imageNamed:@"instaglyph.png"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];

    }
    if (indexPath.item ==2)
    {
        cell.cellLabel.text = @"Check out our website";
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    if (indexPath.item ==3)
    {
        cell.cellLabel.text = @"Office: (281)-482-0068";
    }
    if (indexPath.item ==4)
    {
        if ((currentHour > 8) && (currentHour <18))
        {

            cell.cellLabel.text = @"We are currently: OPEN";
            cell.cellLabel.textColor= [UIColor whiteColor];
            cell.backgroundColor= [UIColor colorWithRed:0.153 green:0.682 blue:0.376 alpha:1.0];

        }
        else
        {
            //rgb(231, 76, 60)
            cell.cellLabel.text = @"We are currently: CLOSED";
            cell.cellLabel.textColor= [UIColor whiteColor];
            cell.backgroundColor= [UIColor colorWithRed:0.906 green:0.298 blue:0.235 alpha:1.0];
        }
    }


    return cell;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//    if (indexPath.item==0)
//    {
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.google.com"]];
//
//    }
//    
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    if (indexPath.item == 0)
    {
        NSURL *url = [NSURL URLWithString:@"fb://profile/100002018163226"];

        if ([[UIApplication sharedApplication] canOpenURL:url])
        {
            [[UIApplication sharedApplication] openURL:url];
        }
        else
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://www.facebook.com/texan.andconstruction"]];
        }
    }
    
    if (indexPath.item == 1)
    {
        NSURL *instagramURL = [NSURL URLWithString:@"instagram://user?username=texanfence"];
        if ([[UIApplication sharedApplication] canOpenURL:instagramURL])
        {
            [[UIApplication sharedApplication] openURL:instagramURL];
        }
        else
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.instagram.com/texanfence"]];
        }
    }
    
    if (indexPath.item == 2)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.texanfence.com"]];
        
    }
    
    if (indexPath.item == 3)
    {
        NSString *phoneNumber = [@"telprompt://" stringByAppendingString:@"8324730387"];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
        
    }
    
    if (indexPath.item == 4)
    {
        HoursModalViewController *modalViewController = [HoursModalViewController new];
        modalViewController.transitioningDelegate = self;
        modalViewController.modalPresentationStyle = UIModalPresentationCustom;
        
        [self.navigationController presentViewController:modalViewController
                                                animated:YES
                                              completion:NULL];

    }
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source
{
    return [PresentingAnimator new];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [DismissingAnimator new];
}

@end
