//
//  HomeCollectionViewCell.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/25/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "HomeCollectionViewCell.h"
#import "Masonry.h"

@implementation HomeCollectionViewCell

- (id)initWithFrame:(CGRect)aRect
{
    if ((self = [super initWithFrame:aRect]))
    {
        [self.cellImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self).with.insets(UIEdgeInsetsMake(0, 0, 0, 20));
        }];
        
        [self.cellText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self).with.insets(UIEdgeInsetsMake(40, 133, 0, 0));
            
        }];
        
        [self.cellDetailButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.centerY);
            make.edges.mas_equalTo(self).with.insets(UIEdgeInsetsMake(0, 0, 0, 20));
            
        }];

    }
    return self;
}

- (void)layoutSubviews
{
    

}

@end
