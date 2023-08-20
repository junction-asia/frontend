import 'dart:convert';

class MapViewScripts {
  static String initMap({double? centerX, double? centerY}) {
    return '''
var mapOptions = {
    center: new naver.maps.LatLng(${centerX ?? 37.3595704}, ${centerY ?? 127.105399}),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
''';
  }

  static String focusTargetBound(double x1, double y1, double x2, double y2) {
    return '''
map.panToBounds(new naver.maps.LatLngBounds(
                new naver.maps.LatLng($x1, $y1),
                new naver.maps.LatLng($x2, $y2)));
''';
  }

  static String focusTarget(double x, double y, {int zoom = 15}) {
    return '''
map.setZoom($zoom, true);
map.panTo(new naver.maps.LatLng($x, $y));
''';
  }

  static String drawMarker(String name, double x, double y) {
    return '''
var marker_$name = new naver.maps.Marker({
  position: new naver.maps.LatLng($x, $y),
  map: map,
});
''';
  }

  static String drawMarkerList(Map<String, Map<String, dynamic>> markers) {
    JsonEncoder encoder = const JsonEncoder();
    String markersJson = encoder.convert(markers);
    print(markersJson);
    return '''
var markers = $markersJson;

for (let key in markers) {
  let x = markers[key]["x"];
  let y = markers[key]["y"];
  position = new naver.maps.LatLng(x, y);
  
  let marker = new naver.maps.Marker({
      map: map,
      position: position,
  });

  naver.maps.Event.addListener(marker, "click", function(e) {
    MapMarkerChannel.postMessage(key+','+x+','+y);
  });
};
''';
  }
}
