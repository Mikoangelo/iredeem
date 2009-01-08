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

- (IBAction)updateTemperatures:(id)sender;

@end
