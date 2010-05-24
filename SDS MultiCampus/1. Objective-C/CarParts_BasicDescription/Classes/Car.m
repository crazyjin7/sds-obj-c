//
//  Car.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Car.h"


@implementation Car

- (id) init
{
	self = [super init];
	if (self != nil){
		//Initialize
		engine = [Engine new];
		tires[0] = [Tire new];
		tires[1] = [Tire new];
		tires[2] = [Tire new];
		tires[3] = [Tire new];
	}
	return self;
}

-(void) print
{
	printf("Car print\n");
	NSLog(@"%@", engine);
	
	NSLog(@"%@", tires[0]);
	NSLog(@"%@", tires[1]);
	NSLog(@"%@", tires[2]);
	NSLog(@"%@", tires[3]);
}

@end
