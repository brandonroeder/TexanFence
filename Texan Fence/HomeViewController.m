//
//  HomeViewController.m
//  Texan Fence
//
//  Created by Brandon Roeder on 4/30/14.
//  Copyright (c) 2014 Brandon Roeder. All rights reserved.
//

#import "HomeViewController.h"
#import "SWRevealViewController.h"
#import "MHOverviewController.h"


@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

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


@implementation TestCell
@end

@interface HomeViewController ()
@property(nonatomic,strong) NSArray *galleryDataSource;
@end


@implementation HomeViewController

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
    
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    _label.text = _text;
    _label.textColor = _color;
    
    self.title = @"Home";
    
    
    MHGalleryItem *photo = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/42318437_scaled_638x479.png"
                                                     galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo1 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/42318478_scaled_639x482.png"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo2 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/dilliongate.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo3 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_02111.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo4 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_05071.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo5 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_05191.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo6 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_05631.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo7 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_05641.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo8 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_07961.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo9 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_08261.jpg"
                                                      galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo10 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_08791.jpg"
                                                       galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo11 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_10801.jpg"
                                                       galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo12 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_10811.jpg"
                                                       galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo13 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_1387-1024x7681.jpg"
                                                       galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo14 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_6642-1024x7681.jpg"
                                                       galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo15 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_6926-768x10241.jpg"
                                                       galleryType:MHGalleryTypeImage];
    MHGalleryItem *photo16 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_6928-1024x7681.jpg"
                                                       galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo17 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_7632-1024x7681.jpg"
                                                       galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo18 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_9022-1024x7681.jpg"
                                                       galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *photo19 = [MHGalleryItem.alloc initWithURL:@"http://texanfence.com/wp-content/uploads/2013/11/IMG_9024-e13843176728101.jpg"
                                                       galleryType:MHGalleryTypeImage];
    
//    MHGalleryItem *Fencing = [MHGalleryItem.alloc initWithURL:[[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Fencing" ofType:@"png"]] absoluteString]
//                                                  galleryType:MHGalleryTypeImage];
//    MHGalleryItem *Repair = [MHGalleryItem.alloc initWithURL:[[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Repair" ofType:@"png"]] absoluteString]
//                                                  galleryType:MHGalleryTypeImage];
//
//    MHGalleryItem *Decks = [MHGalleryItem.alloc initWithURL:[[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Decks" ofType:@"png"]] absoluteString]
//                                                     galleryType:MHGalleryTypeImage];
//
    
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:@"Awesome!!\nOr isn't it?"];
    
    [string setAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15]} range:NSMakeRange(0, string.length)];
    [string setAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:17]} range:NSMakeRange(0, 9)];
    
    photo10.attributedString = string;
    
    self.galleryDataSource = @[@[photo,photo1,photo2,photo3,photo4,photo5,photo6,photo7,photo8,photo9,photo10,photo11,photo12,photo13,photo14,photo15,photo16,photo17,photo18,photo19],
                               ];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.opaque = NO;
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];

    self.tableView.backgroundColor = [UIColor colorWithRed:0.83 green:0.84 blue:0.86 alpha:1];
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
    cellIdentifier = @"TestCell";
    
    TestCell *cell = (TestCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell){
        cell = [[TestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
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
    // You also have to set the image in the Testcell to get the correct Animation
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
