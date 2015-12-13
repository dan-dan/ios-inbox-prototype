//
//  DCInboxViewController.m
//  ios-inbox-prototype
//
//  Created by Daniel Cortez on 12/12/15.
//  Copyright © 2015 HCD. All rights reserved.
//

#import "DCInboxViewController.h"
#import "DCInboxCollectionViewDataSource.h"
#import "DCInboxCollectionViewDelegate.h"
#import "DCSettings.h"

@interface DCInboxViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) DCInboxCollectionViewDataSource *dataSource;
@property (strong, nonatomic) DCInboxCollectionViewDelegate *delegate;

@end

@implementation DCInboxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    [self prepareCollectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Private Utility Methods

- (void)prepareCollectionView {
    // Explicitly setting UICollectionView Data Source and Delegate.  Could be set in storyboard as well.
    self.dataSource = [[DCInboxCollectionViewDataSource alloc] init];
    self.delegate = [[DCInboxCollectionViewDelegate alloc] init];
    
    [self.collectionView setDelegate: self.delegate];
    [self.collectionView setDataSource:self.dataSource];
    [self.collectionView setClipsToBounds:NO];
    [self.collectionView.superview setClipsToBounds:NO];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kNoteCellIdentifier];
    
    
    
}

@end
