//
//  ColorPickerView.h
//  Colormix
//
//  Created by Christian Hatch on 7/19/14.
//  Copyright (c) 2014 Commodoreftp. All rights reserved.
//

@import UIKit;



@class ColorPickerView;
@protocol ColorPickerViewDelegate <NSObject>

@optional
/**
 Called when the picked color changed, whether by the user choosing a new color or by programmatically setting it via setPickedColor:animated:
 
 @param view  The colorPickerView that had the picked color change.
 @param color The new color that has been picked.
 */
- (void)colorPickerView:(nonnull ColorPickerView *)view
   pickedColorDidChange:(nonnull UIColor *)color;


/**
 Called when the user releases their finger from one of the sliders.

 @param view The colorPickerView that the user finished interacting with.
 */
- (void)colorPickerViewUserFinishedInteracting:(nonnull ColorPickerView *)view;

@end









@interface ColorPickerView : UIView

/**
 The color picked by the user or set by calling setPickedColor:animated:
 */
@property (nonatomic, readonly, nonnull) UIColor *pickedColor;

/**
 Sets the picked color and optionally animates the sliders moving.
 
 @param pickedColor The new color to set as the picked color
 @param animated    Optionally animate the transition the new color.
 */
- (void)setPickedColor:(nonnull UIColor *)pickedColor
              animated:(BOOL)animated;


/**
 The delegate to receive callbacks.
 */
@property (weak, nonatomic, nullable) IBOutlet id <ColorPickerViewDelegate> delegate;


/**
 Designated Initializer!
 
 @param frame    The frame of the ColorPickerView.
 @param delegate The delegate of the ColorPickerView
 
 @return A new ColorPickerView with the given frame and delegate.
 */
+ (nullable instancetype)colorPickerViewWithFrame:(CGRect)frame
                                         delegate:(nullable id <ColorPickerViewDelegate>)delegate;

@end




