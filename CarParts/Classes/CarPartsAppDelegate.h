//
//  CarPartsAppDelegate.h
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarPartsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIImageView *engineImageView;
	UIImageView *flTireImageView;
	UIImageView *frTireImageView;
	UIImageView *rlTireImageView;
	UIImageView *rrTireImageView;
}

- (IBAction)changeEngine:(id)sender;
- (IBAction)changeTires:(id)sender;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *engineImageView;
@property (nonatomic, retain) IBOutlet UIImageView *flTireImageView;
@property (nonatomic, retain) IBOutlet UIImageView *frTireImageView;
@property (nonatomic, retain) IBOutlet UIImageView *rlTireImageView;
@property (nonatomic, retain) IBOutlet UIImageView *rrTireImageView;

@end
