# LMGeocoderUniversal

[![CI Status](http://img.shields.io/travis/truebucha/LMGeocoderUniversal.svg?style=flat)](https://travis-ci.org/truebucha/LMGeocoderUniversal)
[![Version](https://img.shields.io/cocoapods/v/LMGeocoderUniversal.svg?style=flat)](http://cocoapods.org/pods/LMGeocoderUniversal)
[![License](https://img.shields.io/cocoapods/l/LMGeocoderUniversal.svg?style=flat)](http://cocoapods.org/pods/LMGeocoderUniversal)
[![Platform](https://img.shields.io/cocoapods/p/LMGeocoderUniversal.svg?style=flat)](http://cocoapods.org/pods/LMGeocoderUniversal)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ObjC
    LMGeocoder * geocoder = [LMGeocoder geocoder];
    NSArray * result = [geocoder geocodeAddressString: @"Minsk. Belarus"
                                              service: kLMGeocoderGoogleService
                                                error: nil];
    NSLog(@"%@", [(LMAddress *)result.firstObject country]);
```

## Requirements

## Installation

LMGeocoderUniversal is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LMGeocoderUniversal'
```

## Author

truebucha, truebucha@gmail.com

## License

LMGeocoderUniversal is available under the MIT license. See the LICENSE file for more info.
