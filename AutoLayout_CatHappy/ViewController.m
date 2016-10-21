//
//  ViewController.m
//  AutoLayout_CatHappy
//
//  Created by Colby Gatte on 10/19/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    UIView *purpleView = [[UIView alloc] init];
    purpleView.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:redView];
    [self.view addSubview:greenView];
    [self.view addSubview:blueView];
    [self.view addSubview:purpleView];
    
    [redView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [greenView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [purpleView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(redView, greenView,blueView, purpleView);
    
    NSArray *horizontalConstraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[redView][greenView]|" options:0 metrics:nil views:views];
    NSArray *horizontalConstraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[blueView][purpleView]|" options:0 metrics:nil views:views];
    
    NSArray *verticalConstraints1 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[redView][blueView]|" options:0 metrics:nil views:views];
    NSArray *verticalConstraints2 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[greenView][purpleView]|" options:0 metrics:nil views:views];
    
    NSArray *equalHeightConstraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(==greenView)]" options:0 metrics:nil views:views];
    NSArray *equalHeightConstraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[greenView(==blueView)]" options:0 metrics:nil views:views];
    NSArray *equalHeightConstraints3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[blueView(==purpleView)]" options:0 metrics:nil views:views];
    
    NSArray *equalWidthConstraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"[redView(==greenView)]" options:0 metrics:nil views:views];
    NSArray *equalWidthConstraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"[greenView(==blueView)]" options:0 metrics:nil views:views];
    NSArray *equalWidthConstraints3 = [NSLayoutConstraint constraintsWithVisualFormat:@"[blueView(==purpleView)]" options:0 metrics:nil views:views];
    
    
    [self.view addConstraints:horizontalConstraints1];
    [self.view addConstraints:horizontalConstraints2];
    [self.view addConstraints:equalWidthConstraints1];
    [self.view addConstraints:equalWidthConstraints2];
    [self.view addConstraints:equalWidthConstraints3];
    [self.view addConstraints:verticalConstraints1];
    [self.view addConstraints:verticalConstraints2];
    [self.view addConstraints:equalHeightConstraints1];
    [self.view addConstraints:equalHeightConstraints2];
    [self.view addConstraints:equalHeightConstraints3];
    
    //
    // Cat image
    UIImage *catImage = [UIImage imageNamed:@"cat.jpg"];
    UIImageView *catImageView = [[UIImageView alloc] initWithImage:catImage];
    catImageView.frame = CGRectMake(0, 0, catImage.size.width/3.5, catImage.size.height/3.5);
    
    // Cat label
    UILabel *catLabel = [[UILabel alloc] init];
    catLabel.text = @"i love cats";
    catLabel.frame = CGRectMake(0, 0, 100, 50);
    catLabel.backgroundColor = [UIColor whiteColor];
    [catLabel setTextAlignment:NSTextAlignmentCenter];
    
    [catImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [catLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSDictionary *catViews = NSDictionaryOfVariableBindings(catImageView, catLabel);
    
    //
    // Cat image & cat label constraints
    NSArray *horizConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[catImageView(100)]" options:0 metrics:nil views:catViews];
    NSArray *vertiConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[catImageView(100)][catLabel]" options:0 metrics:nil views:catViews];
    
    
    [redView addSubview:catImageView];
    [redView addSubview:catLabel];
    
    [redView addConstraints:horizConstraints];
    [redView addConstraints:vertiConstraints];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
