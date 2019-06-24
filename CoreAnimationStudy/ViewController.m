//
//  ViewController.m
//  CoreAnimationStudy
//
//  Created by ioser on 2019/3/28.
//  Copyright © 2019年 Lenny. All rights reserved.
//

#import "ViewController.h"
#import "LNView.h"

@interface ViewController ()
{
   __weak NSString *myString;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LNView *view0 = [[LNView alloc] init];
    view0.layer.frame = CGRectMake(100, 10, 200, 200);
    view0.layer.backgroundColor = [UIColor redColor].CGColor;
    [self.view addSubview:view0];
    
    view0.bounds = CGRectMake(0, 0, view0.bounds.size.width/2, view0.bounds.size.height/2);
    
    LNView *view1 = [[LNView alloc] init];
    view1.layer.frame = CGRectMake(0, 0, 200, 200);
    view1.layer.backgroundColor = [UIColor greenColor].CGColor;
    [view0 addSubview:view1];

    self.view.bounds = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [view1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapEvent)]];
    
    
    [self performSelector:@selector(test)];
    NSLog(@"myString: %@",myString);
    NSLog(@"reteinCount:%@",@([myString retainCount]));
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)test{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    @autoreleasepool {
        NSString *string= [[NSString alloc] initWithFormat:@"First Name: %@", @"tom"];
        NSLog(@"string: %@",string);
        myString = string;
        NSLog(@"reteinCount:%@",@([myString retainCount]));
//    }
    [pool drain];
}

- (void)tapEvent
{
    NSLog(@"hahahhahaha");
}

@end
