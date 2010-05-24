//
//  CarPartsAppDelegate.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CarPartsAppDelegate.h"
#import "Car.h"

@implementation CarPartsAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	Car *car;
	
	car = [Car new];
	[car print];
	
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
