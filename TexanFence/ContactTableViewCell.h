//
//  ContactTableViewCell.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *cellLabel;
@property (strong, nonatomic) IBOutlet UIImageView *cellPicture;

@end
