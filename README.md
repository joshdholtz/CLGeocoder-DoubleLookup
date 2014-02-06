CLGeocoder+DoubleLookup
======================

### Why?
Give address components (address, city, state) and get more info (zip code along with latitude and longitude) in response

### How?
Geocoder.geocode + Geocoder.reverseGeocode

````objc
CLGeocoder *geocoder = [[CLGeocoder alloc] init];
[geocoder doubleGeocodeAddressDictionary:@{ @"City" : @"Milwaukee", @"State" : @"WI" } completionHandler:^(NSArray *placemarks, NSError *error) {
	NSLog(@"Placemarks - %@", [placemarks objectAtIndex:0]);
}];

````
