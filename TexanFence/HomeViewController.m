//
//  HomeViewController.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "HomeViewController.h"
#import "SpringLayout.h"
#import "HomeCollectionViewCell.h"
#import "HomeDetailViewController.h"

@implementation HomeViewController



static NSString * CellIdentifier = @"cellIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor colorWithRed:0.401 green:0.440 blue:0.446 alpha:1.000];
    self.navigationController.navigationBar.topItem.rightBarButtonItem = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIImageView* titleImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"titlelogo.png"]];
    self.navigationController.navigationBar.topItem.title = @"Home";
    self.navigationController.navigationBar.topItem.titleView=titleImageView;
    self.navigationController.navigationBar.topItem.rightBarButtonItem = nil;
}

#pragma mark - UICollectionView Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    CALayer * layer = [cell layer];
    CALayer *imageLayer= [cell.cellImage layer];
    [layer setShadowOffset:CGSizeMake(0, 2)];
    [layer setShadowRadius:1.0];
    [layer setShadowColor:[UIColor redColor].CGColor] ;
    [layer setShadowOpacity:0.5];
    [layer setShadowPath:[[UIBezierPath bezierPathWithRect:cell.bounds] CGPath]];
    [imageLayer setCornerRadius:8];
    [imageLayer setMasksToBounds:YES];
    [imageLayer setShadowPath:[[UIBezierPath bezierPathWithRoundedRect:cell.cellImage.bounds cornerRadius:cell.cellImage.layer.cornerRadius] CGPath]];
    cell.cellText.textColor= [UIColor whiteColor];
    if (indexPath.row == 0)
    {
        cell.cellLabel.text = @"Fencing";

        cell.cellText.text = @"We offer a wide variety of wood fence styles. All are available in pressure-treated pine or cedar. We have various styles of post caps availible in wood and copper";
        cell.cellImage.image = [UIImage imageNamed:@"fence.png"];
    }
    
    if (indexPath.row == 1)
    {
        cell.cellLabel.text = @"Repair";
        cell.cellText.text = @"We offer fence and gate repairs for commercial and residential clients. Most work can be completed in less than one day";
        cell.cellImage.image = [UIImage imageNamed:@"repairicon.png"];

    }
    if (indexPath.row == 2)
    {
        cell.cellLabel.text = @"Decks";
        cell.cellText.text = @"We are custom builders with the goal of creating your dream addition to your home. We are happy to work with the decking material of your choice, including: real wood, Ipe Brazilian hardwood, synthetic and componsite materials.";
        cell.cellImage.image = [UIImage imageNamed:@"decks.jpeg"];

    }
    if (indexPath.row == 3)
    {
        cell.cellLabel.text= @"Custom";
        cell.cellText.text = @"We are custom builders with the goal of creating your dream addition to your home. We are happy to work with the decking material of your choice, including: real wood, Ipe Brazilian hardwood, synthetic and componsite materials.";
        cell.cellImage.image = [UIImage imageNamed:@"custom.png"];


    }

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeDetailViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"HomeDetailViewController"];
    UITextView *fencingTextView = (UITextView *)[vc.view viewWithTag:91];
    UITextView *repairTextView = (UITextView *)[vc.view viewWithTag:92];
    UITextView *decksTextView = (UITextView *)[vc.view viewWithTag:93];
    UITextView *customTextView = (UITextView *)[vc.view viewWithTag:94];

    fencingTextView.textColor= [UIColor whiteColor];
    repairTextView.textColor= [UIColor whiteColor];
    decksTextView.textColor= [UIColor whiteColor];
    customTextView.textColor= [UIColor whiteColor];

    [self.navigationController pushViewController:vc animated:YES];

    if (indexPath.row == 0)
    {
        [vc.view bringSubviewToFront:fencingTextView];
        vc.navigationItem.title= @"Types of Fencing";
        repairTextView.text= nil;
        decksTextView.text= nil;
        customTextView.text= nil;
    }
    
    if (indexPath.row == 1)
    {
        [vc.view bringSubviewToFront:repairTextView];
        vc.navigationItem.title= @"Repair";
        fencingTextView.text=nil;
        decksTextView.text= nil;
        customTextView.text= nil;

    }
    if (indexPath.row == 2)
    {
        vc.navigationItem.title= @"Decks";
        [vc.view bringSubviewToFront:decksTextView];
        fencingTextView.text = nil;
        repairTextView.text = nil;
        customTextView.text = nil;
    }
    if (indexPath.row == 3)
    {
        vc.navigationItem.title= @"Custom";
        [vc.view bringSubviewToFront:customTextView];
        fencingTextView.text=nil;
        repairTextView.text= nil;
        decksTextView.text= nil;
    }

}


- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

@end
