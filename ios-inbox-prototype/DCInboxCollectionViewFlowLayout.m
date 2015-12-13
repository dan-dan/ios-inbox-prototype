//
//  DCInboxCollectionViewFlowLayout.m
//  ios-inbox-prototype
//
//  Created by Daniel Cortez on 12/12/15.
//  Copyright © 2015 HCD. All rights reserved.
//

#import "DCInboxCollectionViewFlowLayout.h"

@implementation DCInboxCollectionViewFlowLayout

- (void)awakeFromNib
{
    self.sectionInset = UIEdgeInsetsMake(0, 50.0, 0.0, 50.0);
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
}


// Allows Preview of next target. Similar to paging.Cannot use paging because paging pages by collection view width.
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity
{
    CGFloat offsetAdjustment = MAXFLOAT;
    CGFloat horizontalOffset = proposedContentOffset.x + 52; // 52 from Trial and error
    
    CGRect targetRect = CGRectMake(proposedContentOffset.x, 0, self.collectionView.bounds.size.width, self.collectionView.bounds.size.height);
    
    NSArray *array = [super layoutAttributesForElementsInRect:targetRect];
    
    for (UICollectionViewLayoutAttributes *layoutAttributes in array) {
        CGFloat itemOffset = layoutAttributes.frame.origin.x;
        if (ABS(itemOffset - horizontalOffset) < ABS(offsetAdjustment)) {
            offsetAdjustment = itemOffset - horizontalOffset;
        }
    }
    
    return CGPointMake(proposedContentOffset.x + offsetAdjustment, proposedContentOffset.y);
}

@end
