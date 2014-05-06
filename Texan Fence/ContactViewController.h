//
//  ContactViewController.h
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ContactViewController : UIViewController
<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
