//
//  MyShape.h
//  MyShape0
//
//  Created by user on 3/28/14.
//  Copyright (c) 2014 abc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyShape : NSObject

@property (readwrite, assign) CGFloat positionX;
@property (readwrite, assign) CGFloat positionY;
@property (readwrite, copy) UIColor *color;
@property (readwrite, assign) CGRect frame;

- (void)moveByDeltaX: (float)deltaX deltaY: (float)deltaY;

@end
