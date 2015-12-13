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
    [UIView animateWithDuration:0.5 animations:^{
   //     [cell setAlpha:1.0];
        cell.transform = CGAffineTransformIdentity;
    }];

    
    return cell;
    
}



@end
