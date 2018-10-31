/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiProxy.h"
#import <Mapbox/Mapbox.h>

@interface TiMapboxAnnotationProxy : TiProxy

@property (nonatomic, strong) MGLPointAnnotation *annotation;

#pragma mark Public API's

- (void)setTitle:(NSString *)title;

- (void)setSubtitle:(NSString *)subtitle;

@end
