//
// Created by user on 3/28/14.
// Copyright (c) 2014 abc. All rights reserved.
//

#import "MyShapeViewController.h"


@implementation MyShapeViewController{
    NSMutableArray* _shapes;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    _shapes = [NSMutableArray array];
    
    for(NSInteger i=0; i<5; i++){
        [_shapes addObject:[[MyShape alloc]init]];
    }
    
    ((MyShapeView *)self.view).dataSource = self;
}

@end

@implementation MyShapeViewController (MyShapeViewDataSource)

- (NSArray *)getData{
    return _shapes;
}

@end