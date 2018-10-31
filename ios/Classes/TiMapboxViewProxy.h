/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiViewProxy.h"
#import "TiMapboxView.h"

#import <Mapbox/Mapbox.h>

@interface TiMapboxViewProxy : TiViewProxy {

}

- (MGLMapView *)mapView;

#pragma mark Public API's

- (void)setScrollEnabled:(NSNumber *)scrollEnabled;

- (void)setZoomEnabled:(NSNumber *)zoomEnabled;

- (void)setUserLocation:(NSNumber *)userLocation;

- (void)setShowsScale:(NSNumber *)showsScale;

- (void)setRotateEnabled:(NSNumber *)rotateEnabled;

- (void)setUserTrackingMode:(NSNumber *)userTrackingMode;

- (void)setStyleURL:(NSString *)styleURL;

- (void)setRegion:(NSDictionary *)region;

- (void)setDirection:(NSArray *)args;

- (void)setZoomLevel:(NSArray *)args;

- (void)setMinimumZoomLevel:(NSNumber *)minimumZoomLevel;

- (void)setMaximumZoomLevel:(NSNumber *)maximumZoomLevel;

- (void)addAnnotation:(id)annotation;

- (void)removeAnnotation:(id)annotation;

@end
