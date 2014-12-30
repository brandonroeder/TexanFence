//
//  HomeViewController.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) UINavigationController *nc;

@end
