//
//  Car.h
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"

@interface Car : NSObject {
	Engine *engine;
	NSMutableArray *tireArray;
	int mileage;
}

- (void)print;

- (int)mileage;
- (void)setMileage:(int)newMileage;

- (Engine *)engine;
- (void)setEngine:(Engine *)newEngine;

- (NSMutableArray *)tireArray;
- (void)setTireArray:(NSMutableArray *)newTireArray;

- (Tire *)tireAtIndex:(int)index;
- (void)setTire:(Tire *)newTire atIndex:(int)index;


@end
