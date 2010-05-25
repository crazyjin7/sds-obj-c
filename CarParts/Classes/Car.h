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

+ (Car *)sharedCar;

- (void)print;

- (Tire *)tireAtIndex:(int)index;
- (void)setTire:(Tire *)newTire atIndex:(int)index;

@property int mileage;
@property (retain) Engine *engine;
@property (retain) NSMutableArray *tireArray;

@end
