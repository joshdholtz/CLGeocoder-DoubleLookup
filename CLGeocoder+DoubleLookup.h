//
//  CLGeocoder+DoubleLookup.h
//  SpotHopper
//
//  Created by Josh Holtz on 2/6/14.
//  Copyright (c) 2014 RokkinCat. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface CLGeocoder (DoubleLookup)

- (void)doubleGeocodeAddressDictionary:(NSDictionary *)addressDictionary completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)doubleGeocodeAddressString:(NSString *)addressString completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)doubleGeocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region completionHandler:(CLGeocodeCompletionHandler)completionHandler;

@end
