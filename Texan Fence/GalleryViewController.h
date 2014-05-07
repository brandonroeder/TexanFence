//
//  GalleryViewController.h
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MHGallery.h"

@interface UINavigationController (autoRotate)
@end


@interface UITabBarController (autoRotate)
@end

@interface TestCell2 : UITableViewCell
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) IBOutlet UIView *backView;

@end


@interface GalleryViewController :
UIViewController<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UIViewControllerTransitioningDelegate,MHGalleryDataSource,MHGalleryDelegate>
@property (nonatomic, strong) IBOutlet UILabel* label;
@property (nonatomic, strong) UIColor* color;
@property (nonatomic, strong) NSString* text;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
