//
// Created by user on 3/28/14.
// Copyright (c) 2014 abc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyShape.h"

@interface MyShapeView : UIView

@property (readwrite, retain) IBOutlet id dataSource;

@end

@interface NSObject (MyShapeViewDataSource)

- (NSArray *)getData;

@end

@interface MyShape (QuartzDrawing)

- (void)drawInRect: (CGRect)rect;

@end