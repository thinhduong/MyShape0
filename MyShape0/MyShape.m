//
//  MyShape.m
//  MyShape0
//
//  Created by user on 3/28/14.
//  Copyright (c) 2014 abc. All rights reserved.
//

#import "MyShape.h"

@implementation MyShape

- (id)init {
    if (nil != (self = [super init])){
        self.frame = CGRectMake(random() % 240, random() % 240, 72.0f, 72.0f);
        self.color = [UIColor colorWithRed:((random() % 256) / 255.0f)
                              green:((random() % 256) / 255.0f)
                              blue:((random() % 256) / 255.0f)
                              alpha:1.0f];
    }

    return self;
}

- (void)moveByDeltaX:(float)deltaX deltaY:(float)deltaY {
    self.frame = CGRectMake([self frame].origin.x + deltaX,
                                [self frame].origin.y + deltaY,
                                [self frame].size.width,
                                [self frame].size.height);
}

- (CGFloat)positionX {
    return CGRectGetMidX(self.frame);
}

- (void)setPositionX:(float)value {
    CGFloat curPosiotnX = [self positionX];

    [self moveByDeltaX:(value - curPosiotnX) deltaY:0.0f];
}


- (CGFloat)positionY {
    return CGRectGetMidY([self frame]);
}

- (void)setPositionY:(float)value {
    [self moveByDeltaX:0.0f deltaY:(value - [self positionY])];
}

@end
