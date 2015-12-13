//
//  DCInboxCollectionViewDelegate.m
//  ios-inbox-prototype
//
//  Created by Daniel Cortez on 12/12/15.
//  Copyright © 2015 HCD. All rights reserved.
//

#import "DCInboxCollectionViewDelegate.h"

@implementation DCInboxCollectionViewDelegate

// Set the spacing manually so that it can be relative to device sizes
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat width = collectionView.frame.size.width; // 80% of Collection View
    CGFloat height = collectionView.frame.size.height * 0.8; // 60% of Collection View
    
        return CGSizeMake(width , height);
    
}


- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [cell setBackgroundColor:[UIColor redColor]];
    [cell setAlpha:0.5];
   // cell.transform = CGAffineTransformMakeScale(0.5, 0.5);

    
   }


@end
