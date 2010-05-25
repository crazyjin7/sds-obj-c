//
//  Tire.h
//  CarParts
//
//  Created by LingoStar on 10. 05. 24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Tire : NSObject {
	float pressure;
	float threadDepth;
}

- (id) initWithPressure:(float)newPressure;
- (id) initWithThreadDepth:(float)newThreadDepth;
- (id) initWIthPressure:(float)newPressure
			threadDepth:(float)newThreadDepth;

- (float) pressure;
- (void) setPressure:(float)newPressure;

- (float) threadDepth;
- (void) setThreadDepth:(float)newThreadDepth;

@end
