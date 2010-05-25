//
//  Tire.m
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Tire.h"


@implementation Tire
@synthesize pressure, threadDepth;

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
		//self.pressure = newPressure;
		threadDepth = 20.0;
	}
	return self;
}
- (id) initWithThreadDepth:(float)newThreadDepth
{
	self = [super init];
	if (self != nil) {
		pressure = 34.0;
		threadDepth = newThreadDepth;
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
	}
	return self;
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
