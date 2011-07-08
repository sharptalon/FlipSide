//
//  MainViewController.h
//  FlipSide
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, UIScrollViewDelegate> {
    UIScrollView *_scrollView;
    UIPageControl *_pageControl;
    NSMutableArray *_viewControllers;
    
    BOOL _pageControlUsed;

}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

@property (nonatomic, retain) NSMutableArray *viewControllers;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

- (IBAction)showInfo:(id)sender withController:(UIViewController *)controller;
- (void)loadScrollViewWithPage:(int)page;

@end
