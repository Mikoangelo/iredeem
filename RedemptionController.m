//
//  RedemptionController.m
//  iRedeem
//
//  Created by Mikael Høilund on 8/1/09.
//  Copyright 2009 Meta.io. All rights reserved.
//

#import "RedemptionController.h"


@implementation RedemptionController

- (void)awakeFromNib {
	[kelvinField setFloatValue:0];
	[self takeKelvinValue:kelvinField];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
	return YES;
}

- (IBAction)takeKelvinValue:(id)sender {
	float value = [sender floatValue];
	[celsiusField setFloatValue:(value - 273.15)];
	[fahrenheitField setFloatValue:(value * 9.0/5.0 - 459.67)];
}

- (IBAction)takeCelsiusValue:(id)sender {
	float value = [sender floatValue];
	[kelvinField setFloatValue:(value + 273.15)];
	[fahrenheitField setFloatValue:(value * 9.0/5.0 + 32)];
}

- (IBAction)takeFahrenheitValue:(id)sender {
	float value = [sender floatValue];
	[kelvinField setFloatValue:((value + 459.67) * 5.0/9.0)];
	[celsiusField setFloatValue:((value - 32) * 5.0/9.0)];
}

@end
