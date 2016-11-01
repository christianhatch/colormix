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
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    LabelledSlider *slider = [[UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle] instantiateWithOwner:nil options:nil].firstObject;
    slider.titleLabel.text = title;
    return slider;
}

- (void)enableTapToChange;
{
    
}

@end
