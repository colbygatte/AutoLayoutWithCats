//
//  CenterMeViewController.m
//  AutoLayout_CatHappy
//
//  Created by Colby Gatte on 10/20/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "CenterMeViewController.h"

@interface CenterMeViewController ()

@end

@implementation CenterMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.containerView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.containerView];
    
    NSLayoutConstraint *containerConstraintLeft = [NSLayoutConstraint constraintWithItem:self.containerView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0];
    NSLayoutConstraint *containerConstraintRight = [NSLayoutConstraint constraintWithItem:self.containerView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0];
    
    NSLayoutConstraint *containerConstraintTop = [NSLayoutConstraint constraintWithItem:self.containerView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:20];
    NSLayoutConstraint *containerConstraintBottom = [NSLayoutConstraint constraintWithItem:self.containerView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20.0];
    
    [self.view addConstraint:containerConstraintLeft];
    [self.view addConstraint:containerConstraintRight];
    [self.view addConstraints:@[containerConstraintTop, containerConstraintBottom]];
    
//    //
//    // LEFT BUTTON
//    /*1. Create leftButton and add to our view*/
//    self.leftButton = [[UIView alloc] init]
//    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.leftButton setTitle:@"LeftButton" forState:UIControlStateNormal];
//    self.leftButton.backgroundColor = [UIColor purpleColor];
//    [self.view addSubview:self.leftButton];
//    /* 2. Constraint to position LeftButton's X*/
//    NSLayoutConstraint *leftButtonXConstraint = [NSLayoutConstraint
//                                                 constraintWithItem:self.leftButton attribute:NSLayoutAttributeCenterX
//                                                 relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:superview attribute:
//                                                 NSLayoutAttributeCenterX multiplier:1.0 constant:-60.0f];
//    /* 3. Constraint to position LeftButton's Y*/
//    NSLayoutConstraint *leftButtonYConstraint = [NSLayoutConstraint
//                                                 constraintWithItem:self.leftButton attribute:NSLayoutAttributeCenterY
//                                                 relatedBy:NSLayoutRelationEqual toItem:superview attribute:
//                                                 NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f];
//    /* 4. Add the constraints to button's superview*/
//    [superview addConstraints:@[ leftButtonXConstraint,
                                 //leftButtonYConstraint]];
    
//    //
//    // RIGHT BUTTON
//    /*5. Create rightButton and add to our view*/
//    self.rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    self.rightButton.backgroundColor = [UIColor blueColor];
//    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.rightButton setTitle:@"RightButton" forState:UIControlStateNormal];
//    [self.view addSubview:self.rightButton];
//    /*6. Constraint to position RightButton's X*/
//    NSLayoutConstraint *rightButtonXConstraint = [NSLayoutConstraint
//                                                  constraintWithItem:self.rightButton attribute:NSLayoutAttributeCenterX
//                                                  relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:superview attribute:
//                                                  NSLayoutAttributeCenterX multiplier:1.0 constant:60.0f];
//    /*7. Constraint to position RightButton's Y*/
//    rightButtonXConstraint.priority = UILayoutPriorityDefaultHigh;
//    NSLayoutConstraint *centerYMyConstraint = [NSLayoutConstraint
//                                               constraintWithItem:self.rightButton attribute:NSLayoutAttributeCenterY
//                                               relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:superview attribute:
//                                               NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f];
//    [superview addConstraints:@[centerYMyConstraint,
//                                rightButtonXConstraint]];
//    
//    //
//    // TEXT FIELD
//    //8. Add Text field
//    self.textfield = [[UITextField alloc]initWithFrame:
//                      CGRectMake(0, 100, 100, 30)];
//    self.textfield.borderStyle = UITextBorderStyleRoundedRect;
//    self.textfield.translatesAutoresizingMaskIntoConstraints = NO;
//    self.textfield.backgroundColor = [UIColor redColor];
//    [self.view addSubview:self.textfield];
//    //9. Text field Constraints
//    NSLayoutConstraint *textFieldTopConstraint = [NSLayoutConstraint
//                                                  constraintWithItem:self.textfield attribute:NSLayoutAttributeTop
//                                                  relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:superview
//                                                  attribute:NSLayoutAttributeTop multiplier:1.0 constant:60.0f];
//    NSLayoutConstraint *textFieldBottomConstraint = [NSLayoutConstraint
//                                                     constraintWithItem:self.textfield attribute:NSLayoutAttributeTop
//                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.rightButton
//                                                     attribute:NSLayoutAttributeTop multiplier:0.8 constant:-60.0f];
//    NSLayoutConstraint *textFieldLeftConstraint = [NSLayoutConstraint 
//                                                   constraintWithItem:self.textfield attribute:NSLayoutAttributeLeft 
//                                                   relatedBy:NSLayoutRelationEqual toItem:superview attribute:
//                                                   NSLayoutAttributeLeft multiplier:1.0 constant:30.0f];
//    NSLayoutConstraint *textFieldRightConstraint = [NSLayoutConstraint 
//                                                    constraintWithItem:self.textfield attribute:NSLayoutAttributeRight 
//                                                    relatedBy:NSLayoutRelationEqual toItem:superview attribute:
//                                                    NSLayoutAttributeRight multiplier:1.0 constant:-30.0f];
//    [superview addConstraints:@[textFieldBottomConstraint ,
//                                textFieldLeftConstraint, textFieldRightConstraint, 
//                                textFieldTopConstraint]];   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
