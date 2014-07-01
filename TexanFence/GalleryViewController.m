//
//  GalleryViewController.m
//  TexanFenceTabbed
//
//  Created by Brandon Roeder on 6/23/14.
//  Copyright (c) 2014 brandonroeder. All rights reserved.
//

#import "GalleryViewController.h"
#import "GalleryTableViewCell.h"
#import "MWPhoto.h"
#import "SDImageCache.h"
#import "MWPhotoBrowser.h"

@interface GalleryViewController() <MWPhotoBrowserDelegate>
@end
NSMutableArray *selections;

@implementation GalleryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.topItem.rightBarButtonItem = nil;

}
- (id)initWithStyle:(UITableViewStyle)style {
    
        // Clear cache for testing
        [[SDImageCache sharedImageCache] clearDisk];
        [[SDImageCache sharedImageCache] clearMemory];
        

        [self loadAssets];
        
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBar.topItem.title = @"Gallery";
    self.navigationController.navigationBar.topItem.rightBarButtonItem = nil;
    self.navigationController.navigationBar.topItem.titleView = nil;
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"galleryCell";
    GalleryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UIImage *cellImage;

    if (indexPath.item == 0)
    {
        cell.cellLabel.text = @"Cedar";
        cellImage= [UIImage imageNamed:@"cedaricon.jpg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    
    if (indexPath.item == 1)
    {
        cell.cellLabel.text = @"Wrought Iron";
        cellImage= [UIImage imageNamed:@"wroughticon.jpg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];

    }
    if (indexPath.item == 2)
    {
        cell.cellLabel.text = @"Stone & Brick";
        cellImage= [UIImage imageNamed:@"stoneicon.jpg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    if (indexPath.item == 3)
    {
        cell.cellLabel.text = @"Ranch & Farm";
        cellImage= [UIImage imageNamed:@"ranchicon.jpg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    if (indexPath.item == 4)
    {
        cell.cellLabel.text = @"Custom Gates";
        cellImage= [UIImage imageNamed:@"customicon.jpg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    if (indexPath.item == 5)
    {
        cell.cellLabel.text = @"Commerical";
        cellImage= [UIImage imageNamed:@"commercialicon.jpeg"];
        [cell.cellPicture setImage:cellImage];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
//    if (indexPath.item == 6)
//    {
//        cell.cellLabel.text = @"Other Services";
//        cellImage= [UIImage imageNamed:@"otherservicesicon.jpeg"];
//        [cell.cellPicture setImage:cellImage];
//        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
//    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *photos = [[NSMutableArray alloc] init];
	NSMutableArray *thumbs = [[NSMutableArray alloc] init];
    MWPhoto *photo;
    
    BOOL displayActionButton = YES;
    BOOL displaySelectionButtons = NO;
    BOOL displayNavArrows = NO;
    BOOL enableGrid = YES;
    BOOL startOnGrid = YES;


    if (indexPath.item==0) //CEDAR
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0052.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0052.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0162.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0162.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0194.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0194.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0234.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0234.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0235.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0235.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0249.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0249.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0305.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0305.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0342.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0342.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0358.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0358.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0360.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0360.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0362.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0362.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0363.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0363.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0364.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0364.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0380.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0380.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0381.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0381.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0398.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0398.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0439.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0439.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0446.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0446.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0526.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0526.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0629.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0629.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0639.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0639.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0641.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0641.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0642.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0642.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0646.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0646.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0647.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0647.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0649.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0649.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0650.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0650.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0659.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0659.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0680.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0680.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0687.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/thumbs/thumbs_img_0687.jpg"]]];
    }
    if (indexPath.item == 1) //Wrought Iron
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-1.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-1.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-2.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-2.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-3.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-3.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-taylor-lake-1.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-taylor-lake-1.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-taylor-lake-2.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-taylor-lake-2.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron-taylor-lake.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron-taylor-lake.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/custom-iron.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_custom-iron.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0202.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0202.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0203.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0203.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0882.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0882.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0883.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0883.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0891.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0891.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0987.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0987.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/img_0998.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_0998.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1011.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1011.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1018.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1018.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1029.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1029.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1032.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1032.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1042.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1042.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1044.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1044.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_1048.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_1048.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7783.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_7783.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7785.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_7785.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7803.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_img_7803.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/wrought-iron-1.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_wrought-iron-1.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/wrought-iron-2.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_wrought-iron-2.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/wrought-iron-3.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_wrought-iron-3.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/wrought-iron-4.jpeg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_wrought-iron-4.jpeg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/wrought-iron.jpeg"]];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/wrought-iron/thumbs/thumbs_wrought-iron.jpeg"]]];
        [photos addObject:photo];
    }
    if (indexPath.item == 2) //Stone & Brick
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1077.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1077.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1079.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1079.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1080.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1080.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1082.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1082.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1083.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1083.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1087.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1087.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1088.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1088.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1089.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1089.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1287.jpg"]];
        [photos addObject:photo];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1287.jpg"]]];
        photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/img_1288.jpg"]];
        [thumbs addObject:[MWPhoto photoWithURL:[NSURL URLWithString:@"http://texanfence.com/wp-content/gallery/stone-and-patio/thumbs/thumbs_img_1288.jpg"]]];
        [photos addObject:photo];
    }
    if (indexPath.item == 3) //Ranch and Farm
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        
        NSString* s = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"farm" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
        NSArray* urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [photos addObject:photo];
        }
        
        s = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"farmthumbs" ofType:@"txt"]encoding:NSUTF8StringEncoding error:nil];
        urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [thumbs addObject:photo];
        }


    }
    
    if (indexPath.item == 4) //Custom Gates
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        
        NSString* s = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"customgates" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
        NSArray* urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [photos addObject:photo];
        }
        
        s = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"customgates_thumbs" ofType:@"txt"]encoding:NSUTF8StringEncoding error:nil];
        urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [thumbs addObject:photo];
        }
        
        
    }
    if (indexPath.item == 5) //Commercial
    {
        enableGrid = YES;
        startOnGrid = YES;
        displayActionButton = YES;
        displayNavArrows = NO;
        displaySelectionButtons = NO;
        
        NSString* s = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"commercial" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
        NSArray* urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [photos addObject:photo];
        }
        
        s = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"commercial_thumbs" ofType:@"txt"]encoding:NSUTF8StringEncoding error:nil];
        urls = [s componentsSeparatedByString:@"\n"];
        for (NSString* url in urls)
        {
            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
            [thumbs addObject:photo];
        }
        
        
    }
//    if (indexPath.item == 6) //Other Services
//    {
//        enableGrid = YES;
//        startOnGrid = YES;
//        displayActionButton = YES;
//        displayNavArrows = NO;
//        displaySelectionButtons = NO;
//        
//        NSString* s = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"farm" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
//        NSArray* urls = [s componentsSeparatedByString:@"\n"];
//        for (NSString* url in urls)
//        {
//            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
//            [photos addObject:photo];
//        }
//        
//        s = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"farmthumbs" ofType:@"txt"]encoding:NSUTF8StringEncoding error:nil];
//        urls = [s componentsSeparatedByString:@"\n"];
//        for (NSString* url in urls)
//        {
//            MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:url]];
//            [thumbs addObject:photo];
//        }
//        
//        
//    }

    
    
    self.photos = photos;
    self.thumbs = thumbs;
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    browser.zoomPhotosToFill = YES;
    browser.enableSwipeToDismiss = YES;
    [browser setCurrentPhotoIndex:0];
    [self.navigationController pushViewController:browser animated:YES];
	[self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser
{
    return _photos.count;
}

- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index
{
    if (index < _photos.count)
        return [_photos objectAtIndex:index];
    return nil;
}

- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser thumbPhotoAtIndex:(NSUInteger)index
{
    if (index < _thumbs.count)
        return [_thumbs objectAtIndex:index];
    return nil;
}

- (void)photoBrowser:(MWPhotoBrowser *)photoBrowser didDisplayPhotoAtIndex:(NSUInteger)index
{
    NSLog(@"Did start viewing photo at index %lu", (unsigned long)index);
}

- (BOOL)photoBrowser:(MWPhotoBrowser *)photoBrowser isPhotoSelectedAtIndex:(NSUInteger)index
{
    return [[selections objectAtIndex:index] boolValue];
}

- (void)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index selectedChanged:(BOOL)selected
{
    [selections replaceObjectAtIndex:index withObject:[NSNumber numberWithBool:selected]];
    NSLog(@"Photo at index %lu selected %@", (unsigned long)index, selected ? @"YES" : @"NO");
}

- (void)photoBrowserDidFinishModalPresentation:(MWPhotoBrowser *)photoBrowser
{
    // If we subscribe to this method we must dismiss the view controller ourselves
    NSLog(@"Did finish modal presentation");
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)loadAssets
{
    // Initialise
    _assets = [NSMutableArray new];
    _assetLibrary = [[ALAssetsLibrary alloc] init];
    
    // Run in the background as it takes a while to get all assets from the library
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSMutableArray *assetGroups = [[NSMutableArray alloc] init];
        NSMutableArray *assetURLDictionaries = [[NSMutableArray alloc] init];
        
        // Process assets
        void (^assetEnumerator)(ALAsset *, NSUInteger, BOOL *) = ^(ALAsset *result, NSUInteger index, BOOL *stop) {
            if (result != nil) {
                if ([[result valueForProperty:ALAssetPropertyType] isEqualToString:ALAssetTypePhoto]) {
                    [assetURLDictionaries addObject:[result valueForProperty:ALAssetPropertyURLs]];
                    NSURL *url = result.defaultRepresentation.url;
                    [_assetLibrary assetForURL:url
                                   resultBlock:^(ALAsset *asset) {
                                       if (asset) {
                                           @synchronized(_assets) {
                                               [_assets addObject:asset];
                                               if (_assets.count == 1) {
                                                   // Added first asset so reload data
                                                   [self.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
                                               }
                                           }
                                       }
                                   }
                                  failureBlock:^(NSError *error){
                                      NSLog(@"operation was not successfull!");
                                  }];
                }
            }
        };
        
        // Process groups
        void (^ assetGroupEnumerator) (ALAssetsGroup *, BOOL *) = ^(ALAssetsGroup *group, BOOL *stop) {
            if (group != nil) {
                [group enumerateAssetsWithOptions:NSEnumerationReverse usingBlock:assetEnumerator];
                [assetGroups addObject:group];
            }
        };
        
        // Process!
        [self.assetLibrary enumerateGroupsWithTypes:ALAssetsGroupAll
                                         usingBlock:assetGroupEnumerator
                                       failureBlock:^(NSError *error) {
                                           NSLog(@"There is an error");
                                       }];
        
    });
    
}



@end
