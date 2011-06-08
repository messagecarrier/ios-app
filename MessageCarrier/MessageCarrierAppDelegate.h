//
//  MessageCarrierAppDelegate.h
//  MessageCarrier
//
//  Created by Joey Gibson on 6/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

#import "MessageCarrierViewController.h"
#import "Reachability.h"

@class MessageCarrierViewController;

@interface MessageCarrierAppDelegate : NSObject <UIApplicationDelegate> {
	//MessageCarrierAppDelegate+DataModel
	NSPersistentStoreCoordinator *persistentStoreCoordinator;
	NSManagedObjectModel	*managedObjectModel;
	NSManagedObjectContext	*managedObjectContext;
    Reachability *reach;
}

#pragma mark -

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MessageCarrierViewController *viewController;

#pragma mark -
#pragma mark Category Properties That Need To Be Synthesized
//@synthesize not allowed in a category's implementation thus they must be in MessageCarrierAppDelegate.m

@property (nonatomic, retain) Reachability *reach;

+(MessageCarrierAppDelegate *) sharedMessageCarrierAppDelegate;
@end
