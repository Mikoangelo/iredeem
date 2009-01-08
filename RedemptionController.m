//
//  RedemptionController.m
//  iRedeem
//
//  Created by Mikael Høilund on 8/1/09.
//  Copyright 2009 Meta.io. All rights reserved.
//

#import "RedemptionController.h"


@implementation RedemptionController

- (IBAction)updateTemperatures:(id)sender {
	float kelvinValue, celsiusValue, fahrenheitValue;
	if (sender == kelvinField) {
		celsiusValue = [sender floatValue] - 273.15;
		fahrenheitValue = [sender floatValue] * (9.0/5.0) - 459.67;
	}
	if (sender == celsiusField) {
		kelvinValue = [sender floatValue] + 273.15;
		fahrenheitValue = [sender floatValue] * (9.0/5.0) + 32;
	}
	if (sender == fahrenheitField) {
		kelvinValue = ([sender floatValue] + 459.67) * (5.0/9.0);
		celsiusValue = ([sender floatValue] - 32) * (5.0/9.0);
	}
	
	if (sender != kelvinField) [kelvinField setFloatValue:kelvinValue];
	if (sender != celsiusField) [celsiusField setFloatValue:celsiusValue];
	if (sender != fahrenheitField) [fahrenheitField setFloatValue:fahrenheitValue];
}

@end
