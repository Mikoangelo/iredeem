//
//  RedemptionController.h
//  iRedeem
//
//  Created by Mikael Høilund on 8/1/09.
//  Copyright 2009 Meta.io. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface RedemptionController : NSObject {
	IBOutlet NSTextField *kelvinField;
	IBOutlet NSTextField *celsiusField;
	IBOutlet NSTextField *fahrenheitField;
}

- (void)awakeFromNib;
- (IBAction)takeKelvinValue:(id)sender;
- (IBAction)takeCelsiusValue:(id)sender;
- (IBAction)takeFahrenheitValue:(id)sender;

@end
