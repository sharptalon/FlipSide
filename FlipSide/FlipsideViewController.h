//
//  FlipsideViewController.h
//  FlipSide
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FlipsideViewNestedControllerDelegate;
@protocol FlipsideViewControllerDelegate;


@interface FlipsideViewController : UIViewController {
    UIView *_nestedView;
    UIViewController <FlipsideViewNestedControllerDelegate> *_nestedController;
}

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;
@property (nonatomic, retain) IBOutlet UIView *nestedView;
@property (nonatomic, retain) UIViewController <FlipsideViewNestedControllerDelegate> *nestedController;

- (IBAction)done:(id)sender;

@end

@protocol FlipsideViewNestedControllerDelegate
- (void)flipsideViewControllerIsFinishing:(FlipsideViewController *)controller;
@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end