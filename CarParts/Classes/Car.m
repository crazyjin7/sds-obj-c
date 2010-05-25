//
//  Car.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Car.h"


@implementation Car
@synthesize mileage, engine, tireArray;

- (id) init
{
	self = [super init];
	if (self != nil){
		//Initialize
		engine = [Engine new];

		Tire *tire1 = [[Tire new] autorelease]; // Retain Count = 1
		Tire *tire2 = [[Tire new] autorelease];
		Tire *tire3 = [[Tire new] autorelease];
		Tire *tire4 = [[Tire new] autorelease];
		
		int tire1RetainCount = [tire1 retainCount];
		NSLog(@"Tire1 Retain Count = %d", tire1RetainCount);
		
		tireArray = [[NSMutableArray alloc] initWithObjects:
					 tire1, tire2, tire3, tire4, nil]; //Retain Count = 2
		
		tire1RetainCount = [tire1 retainCount];
		NSLog(@"Tire1 Retain Count = %d", tire1RetainCount);
	}
	return self;
}

- (void)dealloc
{
	[tireArray release];
}

-(void) print
{
	printf("Car print\n");
	NSLog(@"%@", engine);

	NSLog (@"%@", tireArray);
}

- (Tire *)tireAtIndex:(int)index
{
	return [tireArray objectAtIndex:index];
}
- (void)setTire:(Tire *)newTire atIndex:(int)index
{
	[tireArray replaceObjectAtIndex:index withObject:newTire];
}
@end
