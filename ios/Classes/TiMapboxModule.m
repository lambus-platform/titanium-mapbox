/**
 * titanium-mapbox
 *
 * Created by Hans Knöchel
 * Copyright (c) 2018 Lambus GmbH. All rights reserved.
 */

#import "TiMapboxModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

#import <Mapbox/Mapbox.h>

@implementation TiMapboxModule

#pragma mark Internal

- (id)moduleGUID
{
  return @"c25db189-a854-44be-b77f-3a9715206a48";
}

- (NSString *)moduleId
{
  return @"ti.mapbox";
}

#pragma Public APIs

- (NSString *)accessToken
{
  return [MGLAccountManager accessToken];
}

@end
