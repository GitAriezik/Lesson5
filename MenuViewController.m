//
//  MenuViewController.m
//  Lesson4
//
//  Created by Vasily on 14.04.15.
//  Copyright (c) 2015 Vasily Filippov. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@property (strong, nonatomic) IBOutlet UIButton *button_First;

@property (strong, nonatomic) IBOutlet UIButton *button_Another;




@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button_First addTarget:self action:@selector(go_First) forControlEvents:UIControlEventTouchUpInside];
    [self.button_Another addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) go_First {
    
    ViewController *  view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    
    view.isFirstArray = YES;
   
    
    [self.navigationController pushViewController:view animated:YES];
    
    
}

- (void) go_Another {
    
    ViewController *  view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    
    view.isFirstArray = NO;

    
    [self.navigationController pushViewController:view animated:YES];
    
}
@end
