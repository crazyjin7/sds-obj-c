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
@synthesize engineImageView;
@synthesize flTireImageView, frTireImageView, rlTireImageView, rrTireImageView;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	Car *car = [Car sharedCar];
	[car print];
	
	[window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (IBAction)changeEngine:(id)sender
{
	Slant6 *newEngine = [[Slant6 alloc] init];//0x1234 1
	Car *car = [Car sharedCar];
	[car setEngine:newEngine];//0x1234 2
	[newEngine release];//0x1234 1
	
	UIImage *slant6Image = [UIImage imageNamed:@"Slant6.png"];
	engineImageView.image = slant6Image;
}

- (IBAction)changeTires:(id)sender
{
	Car *car = [Car sharedCar];
	
	AllWeatherRadial *frontLeftTire = [AllWeatherRadial new];
	AllWeatherRadial *frontRightTire = [AllWeatherRadial new];
	AllWeatherRadial *rearLeftTire = [AllWeatherRadial new];
	AllWeatherRadial *rearRightTire = [AllWeatherRadial new];
	[car setTire:frontLeftTire atIndex:0];
	[car setTire:frontRightTire atIndex:1];
	[car setTire:rearLeftTire atIndex:2];
	[car setTire:rearRightTire atIndex:3];
	[frontLeftTire release];
	[frontRightTire release];
	[rearLeftTire release];
	[rearRightTire release];
	
	//추천하는 구현 방식으로 수정 [
	flTireImageView.image = frontLeftTire.imageOfTire;
	frTireImageView.image = frontRightTire.imageOfTire;
	rlTireImageView.image = rearLeftTire.imageOfTire;
	rrTireImageView.image = rearRightTire.imageOfTire;
	//추천하는 구현 방식으로 수정 ]
	
}
@end
