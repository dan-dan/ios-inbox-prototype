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
    cell.transform = CGAffineTransformMakeScale(0.8, 0.8);
    
    
    // Hacky method to check and animate.  Migrate to Cell at some point.
    CGFloat cWidth = collectionView.frame.size.width;
    for (UICollectionViewCell *cell in collectionView.visibleCells) {
        
        CGRect location = [collectionView convertRect:cell.frame toView:nil];
        CGFloat x = location.origin.x;
        if (x > 0 && x < cWidth /2 ) {
            [UIView animateWithDuration:0.5 animations:^{
                [cell setAlpha:1.0];
                cell.transform = CGAffineTransformIdentity;
            }];
            
        } else {
            [UIView animateWithDuration:0.5 animations:^{
                [cell setAlpha:0.5];
                cell.transform = CGAffineTransformMakeScale(0.8, 0.8);
            }];
        }
        
    }

    return cell;
    
}



@end
