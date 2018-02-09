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

    NSError * error = nil;
    LMGeocoder * geocoder = [LMGeocoder geocoder];
    NSArray * result = [geocoder geocodeAddressString: @"Mc Donalds Minsk Belarus"
                                              service: kLMGeocoderGoogleService
                                                error: &error];
    NSLog(@"Google: %@ %@", (LMAddress *)result.firstObject, error);

    error = nil;
    
    result = [geocoder geocodeAddressString: @"Mc Donalds Minsk Belarus"
                                    service: kLMGeocoderAppleService
                                      error: &error];
    NSLog(@"Apple: %@ %@", (LMAddress *)result.firstObject, error);
    
    error = nil;
    
    result = [geocoder geocodeAddressString: @"Eiffel Tower"
                                    service: kLMGeocoderGoogleService
                                      error: &error];
    NSLog(@"Google: %@ %@", (LMAddress *)result.firstObject, error);
    
    error = nil;
    
    result = [geocoder geocodeAddressString: @"Eiffel Tower"
                                    service: kLMGeocoderAppleService
                                      error: &error];
    NSLog(@"Apple: %@ %@", (LMAddress *)result.firstObject, error);
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
