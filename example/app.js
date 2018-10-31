var Mapbox = require('ti.mapbox');
Mapbox.accessToken = 'YOUR_API_KEY';

// !! Remember to set the geolocation permissions before using this module !!
//  <key>NSLocationWhenInUseUsageDescription</key>
//  <string>Can we use your location?</string>

var win = Ti.UI.createWindow();

var mapView = Mapbox.createView({
    scrollEnabled: true,
    zoomEnabled: true,
    minimumZoomLevel: 0.0,
    maximumZoomLevel: 25.5,
    userLocation: true,
    showsScale: true,
    rotateEnabled: true,
    styleURL: 'mapbox://styles/mapbox/streets-v9',
    userLocation: true,
    userTrackingMode: Mapbox.USER_TRACKING_MODE_FOLLOW_WITH_HEADING
});

mapView.addAnnotation(Mapbox.createAnnotation({ 
    latitude: 37.390749,
    longitude: -122.081651,
    title: 'Appcelerator Headquarters',
    subtitle: 'Mountain View, CA'
}))

win.add(mapView);
win.open();
