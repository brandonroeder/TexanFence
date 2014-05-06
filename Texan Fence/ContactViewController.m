//
//  ContactViewController.m
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import "ContactViewController.h"
#import "SWRevealViewController.h"

#define METERS_PER_MILE 1609.344

@interface ContactViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButton;

@end

@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.revealButton setTarget: self.revealViewController];
    [self.revealButton setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 29.424703;
    zoomLocation.longitude= -95.234193;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:zoomLocation];
    [annotation setTitle:@"Texan Fence and Construction"]; //You can set the subtitle too
    [self.mapView addAnnotation:annotation];

    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
