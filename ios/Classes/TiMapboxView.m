/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMapboxView.h"

@implementation TiMapboxView

- (MGLMapView *)mapView
{
  if (_mapView == nil) {
    _mapView = [[MGLMapView alloc] initWithFrame:self.bounds];
    _mapView.center = self.center;
    [_mapView setAutoresizingMask:UIViewAutoresizingNone];
    [self addSubview:_mapView];
  }
  
  return _mapView;
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
  [[self mapView] setFrame:bounds];
  
  [super frameSizeChanged:frame bounds:bounds];
}

@end
