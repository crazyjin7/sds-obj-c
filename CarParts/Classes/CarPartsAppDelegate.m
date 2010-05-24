//
//  CarPartsAppDelegate.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "CarPartsAppDelegate.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

@implementation CarPartsAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	Car *car;
	
	car = [Car new];
	[car print];
	
	Slant6 *newEngine = [[Slant6 alloc] init];//0x1234 1
	[car setEngine:newEngine];//0x1234 2
	[newEngine release];//0x1234 1
	
	AllWeatherRadial *frontLeftTire = [AllWeatherRadial new];
	AllWeatherRadial *frontRightTire = [AllWeatherRadial new];
	[car setTire:frontLeftTire atIndex:0];
	[car setTire:frontRightTire atIndex:1];
	[frontLeftTire release];
	[frontRightTire release];
	
	[car print];
	
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
