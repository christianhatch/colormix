//
//  LabelledSlider.h
//  Pods
//
//  Created by Christian Hatch on 6/9/16.
//
//

@import UIKit;

@interface LabelledSlider : UIView

@property (weak, nonatomic, nullable) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic, nullable) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic, nullable) IBOutlet UISlider *slider;

+ (instancetype)labelledSliderWithTitle:(nullable NSString *)title;

@end
