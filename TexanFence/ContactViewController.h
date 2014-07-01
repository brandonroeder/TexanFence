//
//  ContactViewController.h
//  Texan Fence
//
//  Created by Brandon Roeder on 6/19/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface ContactViewController : UIViewController <UINavigationBarDelegate,MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
