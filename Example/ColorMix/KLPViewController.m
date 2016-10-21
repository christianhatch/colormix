//
//  KLPViewController.m
//  ColorMix
//
//  Created by Christian Hatch on 05/22/2016.
//  Copyright (c) 2016 Christian Hatch. All rights reserved.
//

#import "KLPViewController.h"
#import <ColorMix/ColorMix.h>

@interface KLPViewController () <ColorPickerViewDelegate>

@property (weak, nonatomic) ColorPickerView *colorPickerView;

@end


@implementation KLPViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self applyColor:[UIColor randomColor]];
}

- (BOOL)prefersStatusBarHidden
{
    return true;
}

#pragma mark - Methods

- (void)applyColor:(UIColor *)color
{
    [UIView animateWithDuration:0.5f
                          delay:0.0f
         usingSpringWithDamping:0.7f
          initialSpringVelocity:0.0f
                        options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionTransitionCrossDissolve
                     animations:^
     {
         [self.colorPickerView setPickedColor:color animated:YES];
     }
                     completion:nil];
}

#pragma mark - ColorPickerViewDelegate

- (void)colorPickerView:(ColorPickerView *)view pickedColorDidChange:(UIColor *)color
{
    [UIView animateWithDuration:0.5f
                          delay:0.0f
         usingSpringWithDamping:0.7f
          initialSpringVelocity:0.0f
                        options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionTransitionCrossDissolve
                     animations:^
     {
         
     }
                     completion:nil];
}

#pragma mark - Getters

- (ColorPickerView *)colorPickerView
{
    if (!_colorPickerView) {
        _colorPickerView = [ColorPickerView colorPickerViewWithFrame:self.view.frame
                                                            delegate:self];
        
        _colorPickerView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:_colorPickerView];
        
        UIEdgeInsets padding = UIEdgeInsetsMake(0, 0, 0, 0);
        
        [self.view addConstraints:@[
                                    [NSLayoutConstraint constraintWithItem:_colorPickerView
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1.0
                                                                  constant:padding.top],
                                    
                                    [NSLayoutConstraint constraintWithItem:_colorPickerView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:padding.left],
                                    
                                    [NSLayoutConstraint constraintWithItem:_colorPickerView
                                                                 attribute:NSLayoutAttributeBottom
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeBottom
                                                                multiplier:1.0
                                                                  constant:-padding.bottom],
                                    
                                    [NSLayoutConstraint constraintWithItem:_colorPickerView
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:-padding.right],
                                    
                                    ]];
        
    }
    return _colorPickerView;
}


@end

