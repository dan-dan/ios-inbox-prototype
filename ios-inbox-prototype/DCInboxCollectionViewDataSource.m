//
//  DCInboxCollectionViewDataSource.m
//  ios-inbox-prototype
//
//  Created by Daniel Cortez on 12/12/15.
//  Copyright © 2015 HCD. All rights reserved.
//

#import "DCInboxCollectionViewDataSource.h"
#import "DCSettings.h"

@implementation DCInboxCollectionViewDataSource


- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    
    return 10;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNoteCellIdentifier    forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor redColor]];
    [cell setAlpha:0.5];
    cell.transform = CGAffineTransformMakeScale(0.5, 0.5);
    
    for (UICollectionViewCell *cell in collectionView.visibleCells) {
        [UIView animateWithDuration:0.1 animations:^{
            [cell setAlpha:1.0];
            cell.transform = CGAffineTransformIdentity;
        }];
    }
    
    return cell;
    
}
@end
