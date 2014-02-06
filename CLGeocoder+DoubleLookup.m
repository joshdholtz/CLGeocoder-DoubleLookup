//
//  CLGeocoder+DoubleLookup.m
//  SpotHopper
//
//  Created by Josh Holtz on 2/6/14.
//  Copyright (c) 2014 RokkinCat. All rights reserved.
//

#import "CLGeocoder+DoubleLookup.h"

@implementation CLGeocoder (DoubleLookup)

- (void)doubleGeocodeAddressDictionary:(NSDictionary *)addressDictionary completionHandler:(CLGeocodeCompletionHandler)completionHandler {
    [self geocodeAddressDictionary:addressDictionary completionHandler:^(NSArray *placemarks, NSError *error) {
        [self doTheDouble:placemarks error:error completionHandler:completionHandler];
    }];
}

- (void)doubleGeocodeAddressString:(NSString *)addressString completionHandler:(CLGeocodeCompletionHandler)completionHandler {
    [self geocodeAddressString:addressString completionHandler:^(NSArray *placemarks, NSError *error) {
        [self doTheDouble:placemarks error:error completionHandler:completionHandler];
    }];
}

- (void)doubleGeocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region completionHandler:(CLGeocodeCompletionHandler)completionHandler {
    [self geocodeAddressString:addressString inRegion:region completionHandler:^(NSArray *placemarks, NSError *error) {
        [self doTheDouble:placemarks error:error completionHandler:completionHandler];
    }];
}

#pragma mark - Private

- (void)doTheDouble:(NSArray*)placemarks error:(NSError*)error completionHandler:(CLGeocodeCompletionHandler)completionHandler {
    if (error || placemarks.count == 0) {
        completionHandler(placemarks, error);
    } else {
        CLPlacemark *placemark = [placemarks objectAtIndex:0];;
        [self reverseGeocodeLocation:placemark.location completionHandler:^(NSArray *placemarks, NSError *error) {
            completionHandler(placemarks, error);
        }];
        
    }
}

@end
