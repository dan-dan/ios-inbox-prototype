//
//  ModelController.h
//  ios-inbox-prototype
//
//  Created by Daniel Cortez on 12/12/15.
//  Copyright © 2015 HCD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

