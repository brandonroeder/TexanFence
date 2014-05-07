//
//  GalleryViewController.m
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import "GalleryViewController.h"
#import "SWRevealViewController.h"
#import "MHOverviewController.h"


@interface GalleryViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButton;

@end


@implementation UITabBarController (autoRotate)
- (BOOL)shouldAutorotate {
    return [self.selectedViewController shouldAutorotate];
}
- (NSUInteger)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}
@end


@implementation UINavigationController (autoRotate)

-(UIStatusBarStyle)preferredStatusBarStyle{
    return [self.viewControllers.lastObject preferredStatusBarStyle];
}

- (BOOL)shouldAutorotate {
    return [self.viewControllers.lastObject shouldAutorotate];
}
- (NSUInteger)supportedInterfaceOrientations {
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}

@end


@implementation TestCell2
@end

@interface GalleryViewController ()
@property(nonatomic,strong) NSArray *galleryDataSource;
@end


@implementation GalleryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.revealButton setTarget: self.revealViewController];
    [self.revealButton setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    
    self.title = @"Gallery";
    
    
    MHGalleryItem *photo = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0052.jpg"
                                                galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo1 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0053.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo2 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0162.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo3 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0194.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo4 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0234.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo5 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0234.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo6 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0249.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo7 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0305.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo8 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0342.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo9 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0358.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo10 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0360.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo11 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0362.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo12 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0363.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo13 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0364.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo14 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_0380.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo15 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo16 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo17 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo18 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo19 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo20 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo21 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/gallery/cedar-fencing/img_7815.jpg"
                                                galleryType:MHGalleryTypeImage];
    
    
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:@"Awesome!!\nOr isn't it?"];
    
    [string setAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15]} range:NSMakeRange(0, string.length)];
    [string setAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:17]} range:NSMakeRange(0, 9)];
    
    photo10.attributedString = string;
    


    
    self.galleryDataSource = @[@[photo,photo1,photo2,photo3,photo4,photo5,photo6,photo7,photo8,photo9,photo10,photo11,photo12,photo13,photo14,photo15,photo16,photo17,photo18,photo19],
                               @[photo20],
                               @[photo21],
                               
                               
                               ];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.opaque = NO;
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];
    
    [self.tableView reloadData];
    
    [self setNeedsStatusBarAppearanceUpdate];
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    if ([self.presentedViewController isKindOfClass:[MHGalleryController class]]) {
        MHGalleryController *gallerController = (MHGalleryController*)self.presentedViewController;
        return gallerController.preferredStatusBarStyleMH;
    }
    return UIStatusBarStyleDefault;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.galleryDataSource.count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.galleryDataSource[collectionView.tag] count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 330;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = nil;
    cellIdentifier = @"TestCell2";
    
    TestCell2 *cell = (TestCell2 *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell){
        cell = [[TestCell2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.backView.layer.masksToBounds = NO;
    cell.backView.layer.shadowOffset = CGSizeMake(0, 0);
    cell.backView.layer.shadowRadius = 1.0;
    cell.backView.layer.shadowColor = [UIColor blackColor].CGColor;
    cell.backView.layer.shadowOpacity = 0.5;
    cell.backView.layer.shadowPath = [UIBezierPath bezierPathWithRect:cell.backView.bounds].CGPath;
    cell.backView.layer.cornerRadius = 2.0;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsMake(0, 25, 0, 25);
    layout.itemSize = CGSizeMake(270, 225);
    layout.minimumLineSpacing = 15;
    layout.minimumInteritemSpacing = 15;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    cell.collectionView.collectionViewLayout = layout;
    
    [cell.collectionView registerClass:[MHMediaPreviewCollectionViewCell class] forCellWithReuseIdentifier:@"MHMediaPreviewCollectionViewCell"];
    
    cell.collectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    [cell.collectionView setShowsHorizontalScrollIndicator:NO];
    [cell.collectionView setDelegate:self];
    [cell.collectionView setDataSource:self];
    [cell.collectionView setTag:indexPath.section];
    [cell.collectionView reloadData];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell =nil;
    NSString *cellIdentifier = @"MHMediaPreviewCollectionViewCell";
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    NSIndexPath *indexPathNew = [NSIndexPath indexPathForRow:indexPath.row inSection:collectionView.tag];
    [self makeOverViewDetailCell:(MHMediaPreviewCollectionViewCell*)cell atIndexPath:indexPathNew];
    
    return cell;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UIImageView *imageView = [(MHMediaPreviewCollectionViewCell*)[collectionView cellForItemAtIndexPath:indexPath] thumbnail];
    
    NSArray *galleryData = self.galleryDataSource[collectionView.tag];
    
    MHGalleryController *gallery = [MHGalleryController galleryWithPresentationStyle:MHGalleryViewModeImageViewerNavigationBarShown];
    gallery.galleryItems = galleryData;
    gallery.presentingFromImageView = imageView;
    gallery.presentationIndex = indexPath.row;
    
    //  gallery.galleryDelegate = self;
    //  gallery.dataSource = self;
    __weak MHGalleryController *blockGallery = gallery;
    
    gallery.finishedCallback = ^(NSUInteger currentIndex,UIImage *image,MHTransitionDismissMHGallery *interactiveTransition,MHGalleryViewMode viewMode){
        if (viewMode == MHGalleryViewModeOverView) {
            [blockGallery dismissViewControllerAnimated:YES completion:^{
                [self setNeedsStatusBarAppearanceUpdate];
            }];
        }else{
            NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:currentIndex inSection:0];
            CGRect cellFrame  = [[collectionView collectionViewLayout] layoutAttributesForItemAtIndexPath:newIndexPath].frame;
            [collectionView scrollRectToVisible:cellFrame
                                       animated:NO];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [collectionView reloadItemsAtIndexPaths:@[newIndexPath]];
                [collectionView scrollToItemAtIndexPath:newIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
                
                MHMediaPreviewCollectionViewCell *cell = (MHMediaPreviewCollectionViewCell*)[collectionView cellForItemAtIndexPath:newIndexPath];
                
                [blockGallery dismissViewControllerAnimated:YES dismissImageView:cell.thumbnail completion:^{
                    
                    [self setNeedsStatusBarAppearanceUpdate];
                    
                    MPMoviePlayerController *player = interactiveTransition.moviePlayer;
                    
                    player.controlStyle = MPMovieControlStyleEmbedded;
                    player.view.frame = cell.bounds;
                    player.scalingMode = MPMovieScalingModeAspectFill;
                    [cell.contentView addSubview:player.view];
                }];
            });
        }
    };
    [self presentMHGalleryController:gallery animated:YES completion:nil];
}


-(NSInteger)numberOfItemsInGallery:(MHGalleryController *)galleryController{
    return 10;
}

-(MHGalleryItem *)itemForIndex:(NSInteger)index{
    // You also have to set the image in the TestCell2 to get the correct Animation
    //    return [MHGalleryItem.alloc initWithImage:nil];
    return [MHGalleryItem itemWithImage:[UIImage imageNamed:@"twitterMH"]];
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

-(BOOL)shouldAutorotate{
    return YES;
}

-(void)makeOverViewDetailCell:(MHMediaPreviewCollectionViewCell*)cell atIndexPath:(NSIndexPath*)indexPath{
    MHGalleryItem *item = self.galleryDataSource[indexPath.section][indexPath.row];
    cell.thumbnail.contentMode = UIViewContentModeScaleAspectFill;
    
    cell.thumbnail.layer.shadowOffset = CGSizeMake(0, 0);
    cell.thumbnail.layer.shadowRadius = 1.0;
    cell.thumbnail.layer.shadowColor = [UIColor blackColor].CGColor;
    cell.thumbnail.layer.shadowOpacity = 0.5;
    cell.thumbnail.layer.shadowPath = [UIBezierPath bezierPathWithRect:cell.thumbnail.bounds].CGPath;
    cell.thumbnail.layer.cornerRadius = 2.0;
    
    cell.thumbnail.image = nil;
    cell.galleryItem = item;
}
@end