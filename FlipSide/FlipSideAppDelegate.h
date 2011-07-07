//
//  FlipSideAppDelegate.h
//  FlipSide
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface FlipSideAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end
