//
//  Tire.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Tire.h"


@implementation Tire
@synthesize pressure, threadDepth, imageOfTire;

- (NSString *)description
{
	NSString *desc = [NSString stringWithFormat:
					  @"I am a tire, I last a while \n Pressure = %f, ThreadDepth = %f",
					  self.pressure, self.threadDepth];
	return desc;
}

- (id) init
{
	self = [self initWithPressure:34 threadDepth:20];
	return self;
}

- (id) initWithPressure:(float)newPressure
{
	self = [super init];
	if (self != nil) {
		pressure = newPressure;
		threadDepth = 20.0;
		if ([self class] == NSClassFromString(@"AllWeatherRadial"))
		{
			imageOfTire = [[UIImage imageNamed:@"AllWeahterRadial.png"] retain];
		}
		else if ([self class] == NSClassFromString(@"Tire"))
		{
			imageOfTire = [[UIImage imageNamed:@"Tire.png"] retain];
		}
	}
	return self;
}
- (id) initWithThreadDepth:(float)newThreadDepth
{
	self = [super init];
	if (self != nil) {
		pressure = 34.0;
		threadDepth = newThreadDepth;
		if ([self class] == NSClassFromString(@"AllWeatherRadial"))
		{
			imageOfTire = [[UIImage imageNamed:@"AllWeahterRadial.png"] retain];
		}
		else if ([self class] == NSClassFromString(@"Tire"))
		{
			imageOfTire = [[UIImage imageNamed:@"Tire.png"] retain];
		}
	}
	return self;
}
- (id) initWithPressure:(float)newPressure
			threadDepth:(float)newThreadDepth
{
	self = [super init];
	if (self != nil) {
		pressure = newPressure;
		threadDepth = newThreadDepth;
		if ([self class] == NSClassFromString(@"AllWeatherRadial"))
		{
			imageOfTire = [[UIImage imageNamed:@"AllWeahterRadial.png"] retain];
		}
		else if ([self class] == NSClassFromString(@"Tire"))
		{
			imageOfTire = [[UIImage imageNamed:@"Tire.png"] retain];
		}
		
	}
	return self;
}

- (void)dealloc
{
	[imageOfTire release];
	[super dealloc];
}

/*
- (float) pressure
{
	return pressure;
}
- (void) setPressure:(float)newPressure
{
	pressure = newPressure;
}

- (float) threadDepth
{
	return threadDepth;
}
- (void) setThreadDepth:(float)newThreadDepth
{
	threadDepth = newThreadDepth;
}
*/

@end
