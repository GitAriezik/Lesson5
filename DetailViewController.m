//
//  DetailViewController.m
//  Lesson4
//
//  Created by Vasily on 12.04.15.
//  Copyright (c) 2015 Vasily Filippov. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()


- (IBAction)go_home:(id)sender;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label_MainValue.text =self.string_MainValue;
    self.textView_Discr.text =self.string_Discr;
    self.label_Price.text = [NSString stringWithFormat:@"Цена - %@", self.string_Price];
    
    
    UIImage * image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.jpg", self.string_MainValue]];
    
    
    
    self.imageView_DetailItem.image = image;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(void) viewDidDisappear:(BOOL)animated {
    
    self.imageView_DetailItem = nil;

}
- (IBAction)go_home:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}
@end
