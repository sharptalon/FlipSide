//
//  FrontViewController.h
//  FlipSide
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FrontViewController : UIViewController {
    UILabel *_numberLabel;
    NSInteger _page;
}

@property (nonatomic, retain) IBOutlet UILabel *numberLabel;

- (id)initWithPageNumber:(NSInteger)page;
- (IBAction)showInfo:(id)sender;

@end
