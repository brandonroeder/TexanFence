//
//  GalleryViewController.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface GalleryViewController : UIViewController<MWPhotoBrowserDelegate> {
    UISegmentedControl *_segmentedControl;
    NSMutableArray *_selections;
}

@property (nonatomic, strong) NSMutableArray *photos;
@property (nonatomic, strong) NSMutableArray *thumbs;
@property (nonatomic, strong) ALAssetsLibrary *assetLibrary;
@property (nonatomic, strong) NSMutableArray *assets;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (void)loadAssets;

@end
