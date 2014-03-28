//
// Created by user on 3/28/14.
// Copyright (c) 2014 abc. All rights reserved.
//

#import "MyShapeView.h"

@implementation MyShapeView

-(void)drawRect:(CGRect)rect {
    [[UIColor whiteColor] set];
    UIRectFill(rect);

    MyShape * curShape = nil;

    for(curShape in [[self dataSource] getData]){
        [curShape drawInRect:rect];
    }
}

@end


@implementation MyShape (QuartzDrawing)

- (void)drawInRect:(CGRect)rect {
    [[self color] set];
    UIRectFill([self frame]);
}

@end