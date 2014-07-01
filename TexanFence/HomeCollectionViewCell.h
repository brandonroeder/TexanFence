//
//  HomeCollectionViewCell.h
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/25/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *cellImage;
@property (strong, nonatomic) IBOutlet UITextView *cellText;
@property (strong, nonatomic) IBOutlet UILabel *cellLabel;

@end
