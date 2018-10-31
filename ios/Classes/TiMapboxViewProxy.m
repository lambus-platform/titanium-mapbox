/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiMapboxViewProxy.h"
#import "TiMapboxAnnotationProxy.h"
#import "TiUtils.h"

@implementation TiMapboxViewProxy

- (MGLMapView *)mapView
{
  TiMapboxView *tiView = (TiMapboxView *)self.view;
  
  return tiView.mapView;
}

- (void)setScrollEnabled:(NSNumber *)scrollEnabled
{
  [[self mapView] setScrollEnabled:scrollEnabled.boolValue];
}

- (void)setZoomEnabled:(NSNumber *)zoomEnabled
{
  [[self mapView] setZoomEnabled:zoomEnabled.boolValue];
}

- (void)setUserLocation:(NSNumber *)userLocation
{
  [[self mapView] setShowsUserLocation:userLocation.boolValue];
}

- (void)setShowsScale:(NSNumber *)showsScale
{
  [[self mapView] setShowsScale:showsScale.boolValue];
}

- (void)setRotateEnabled:(NSNumber *)rotateEnabled
{
  [[self mapView] setShowsHeading:rotateEnabled.boolValue];
}

- (void)setUserTrackingMode:(NSNumber *)userTrackingMode
{
  [[self mapView] setUserTrackingMode:[TiUtils intValue:userTrackingMode]];
}

- (void)setStyleURL:(NSString *)styleURL
{
  [[self mapView] setStyleURL:[TiUtils toURL:styleURL proxy:self]];
}

- (void)setRegion:(NSDictionary *)region
{
  CLLocationDegrees latitude = [TiUtils doubleValue:region[@"latitude"]];
  CLLocationDegrees longitude = [TiUtils doubleValue:region[@"longitude"]];

  [[self mapView] setLatitude:latitude];
  [[self mapView] setLongitude:longitude];
}

- (void)setDirection:(NSArray *)args
{
  NSNumber *direction = args[0];
  NSDictionary *options;
  
  if (args.count == 2) {
    options = args[1];
  }
  
  [[self mapView] setDirection:direction.doubleValue animated:[TiUtils boolValue:@"animated" properties:options def:YES]];
}

- (void)setZoomLevel:(NSArray *)args
{
  NSNumber *zoomLevel = args[0];
  NSDictionary *options;
  
  if (args.count == 2) {
    options = args[1];
  }
  
  [[self mapView] setZoomLevel:zoomLevel.doubleValue animated:[TiUtils boolValue:@"animated" properties:options def:YES]];
}

- (void)setMinimumZoomLevel:(NSNumber *)minimumZoomLevel
{
  [[self mapView] setMinimumZoomLevel:minimumZoomLevel.doubleValue];
}

- (void)setMaximumZoomLevel:(NSNumber *)maximumZoomLevel
{
  [[self mapView] setMaximumZoomLevel:maximumZoomLevel.doubleValue];
}

- (void)addAnnotation:(id)annotation
{
  ENSURE_SINGLE_ARG(annotation, TiMapboxAnnotationProxy);
  [[self mapView] addAnnotation:[(TiMapboxAnnotationProxy *)annotation annotation]];
}

- (void)removeAnnotation:(id)annotation
{
  ENSURE_SINGLE_ARG(annotation, TiMapboxAnnotationProxy);
  [[self mapView] removeAnnotation:[(TiMapboxAnnotationProxy *)annotation annotation]];
}

@end
