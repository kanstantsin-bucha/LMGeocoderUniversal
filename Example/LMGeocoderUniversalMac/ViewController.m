//
//  ViewController.m
//  LMGeocoderUniversalMac
//
//  Created by Kanstantsin Bucha on 1/28/18.
//  Copyright © 2018 truebucha. All rights reserved.
//

#import "ViewController.h"
#import <LMGeocoderUniversal/LMGeocoderUniversal.h>

@implementation ViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];

    LMGeocoder * geocoder = [LMGeocoder geocoder];
    NSArray * result = [geocoder geocodeAddressString: @"Minsk. Belarus"
                                              service: kLMGeocoderGoogleService
                                                error: nil];
    NSLog(@"%@", [(LMAddress *)result.firstObject country]);
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
