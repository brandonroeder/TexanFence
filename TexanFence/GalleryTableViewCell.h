//
//  GalleryTableViewCell.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/24/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *cellPicture;
@property (strong, nonatomic) IBOutlet UILabel *cellLabel;

@end
