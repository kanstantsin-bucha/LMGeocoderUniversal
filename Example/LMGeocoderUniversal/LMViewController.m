//
//  LMViewController.m
//  LMGeocoderUniversal
//
//  Created by truebucha on 01/28/2018.
//  Copyright (c) 2018 truebucha. All rights reserved.
//

#import "LMViewController.h"
#import <LMGeocoderUniversal/LMGeocoderUniversal.h>
#import <CDBKit/CDBKit.h>

@interface LMViewController ()

@end

@implementation LMViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    [self geocodeAddress: @"Mc Donalds Minsk Belarus"
              completion: ^{
        [self geocodeAddress: @"Eiffel Tower"
                  completion: ^{}];
    }];
    
}

- (void) geocodeAddress: (NSString *) address
             completion: (nonnull CDBCompletion) completion {
    LMGeocoder * geocoder = [LMGeocoder geocoder];
    
    [geocoder geocodeAddressString:  address
                           service: kLMGeocoderGoogleService
                 completionHandler: ^(NSArray<LMAddress *> * _Nullable results, NSError * _Nullable error) {
                     NSLog(@"Google: %@ %@", (LMAddress *)results.firstObject, error);
                     
        [geocoder geocodeAddressString:  address
                               service: kLMGeocoderAppleService
                     completionHandler: ^(NSArray<LMAddress *> * _Nullable results, NSError * _Nullable error) {
            NSLog(@"Apple: %@ %@", (LMAddress *)results.firstObject, error);
            
            completion();
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
