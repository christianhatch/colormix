//
//  LabelledSlider.m
//  Pods
//
//  Created by Christian Hatch on 6/9/16.
//
//

#import "LabelledSlider.h"

@implementation LabelledSlider

+ (instancetype)labelledSliderWithTitle:(NSString *)title
{
    LabelledSlider *slider = [[UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle bundleForClass:[self class]]] instantiateWithOwner:nil options:nil].firstObject;
    slider.titleLabel.text = title;
    return slider;
}

@end
