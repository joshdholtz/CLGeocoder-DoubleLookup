CLGeocoder+DoubleLookup
======================

### Why?
Give address components (address, city, state) and get more info (zip code along with latitude and longitude) in response

### How?
Geocoder.geocode + Geocoder.reverseGeocode

### Example
````objc
#import "CLGeocoder+DoubleLookup.h"

# INPUT: Milwaukee, WI
# OUTPUT: 700–748 N Milwaukee St, 700–748 N Milwaukee St, Milwaukee, WI  53202, United States @ <+43.03889350,-87.90655650> +/- 100.00m

CLGeocoder *geocoder = [[CLGeocoder alloc] init];
[geocoder doubleGeocodeAddressDictionary:@{ @"City" : @"Milwaukee", @"State" : @"WI" } completionHandler:^(NSArray *placemarks, NSError *error) {
	NSLog(@"Placemarks - %@", [placemarks objectAtIndex:0]);
}];

````
