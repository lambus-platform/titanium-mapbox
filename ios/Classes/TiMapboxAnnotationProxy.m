/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMapboxAnnotationProxy.h"
#import "TiUtils.h"

@implementation TiMapboxAnnotationProxy

- (NSArray *)keySequence
{
  return @[@"latitude", @"longitude", @"title"];
}

- (MGLPointAnnotation *)annotation
{
  if (_annotation == nil) {
    _annotation = [[MGLPointAnnotation alloc] init];
    CLLocationDegrees latitude = [TiUtils doubleValue:[self valueForKey:@"latitude"]];
    CLLocationDegrees longitude = [TiUtils doubleValue:[self valueForKey:@"longitude"]];
  
    _annotation.coordinate = CLLocationCoordinate2DMake(latitude, longitude);
  }
  
  return _annotation;
}

- (void)setTitle:(NSString *)title
{
  [[self annotation] setTitle:title];
}

- (void)setSubtitle:(NSString *)subtitle
{
  [[self annotation] setSubtitle:subtitle];
}

@end
