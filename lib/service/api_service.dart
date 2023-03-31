import 'dart:convert';

import 'package:http/http.dart';
import 'package:zephyr_app/models/location_model.dart';
import 'package:zephyr_app/models/request_api_model.dart';
import 'package:zephyr_app/models/response_api_model.dart';

class ApiService {
  static const String _baseUrl = 'https://devapi.zephyrproject.app/api/v1';

  Future<Map<String, List<RouteResponse>>?> getRouteCar(
      {required Location origin,
      required Location destination,
      required RouteType travelMode,
      required String routingPreference,
      required List<dynamic> requestedReferenceRoutes,
      required Map<dynamic, dynamic> vehicleInfo}) async {
    final String url = '$_baseUrl/transport/car';
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    final Map<String, dynamic> body = {
      'origin': origin.toJson(),
      'destination': destination.toJson(),
      'travelMode': travelMode.toString().split('.').last.toUpperCase(),
      'routingPreference': routingPreference,
      'requestedReferenceRoutes': requestedReferenceRoutes,
      'vehicleInfo': vehicleInfo
    };
    // var test = {
    //   "origin": {
    //     "latitude": 40.160304539691815,
    //     "longitude": -82.9638559032275,
    //     "name": "Origin"
    //   },
    //   "destination": {
    //     "latitude": 40.264072850977264,
    //     "longitude": -81.8564467400299,
    //     "name": "Dest"
    //   },
    //   "travelMode": "DRIVING",
    //   "routingPreference": "TRAFFIC_AWARE_OPTIMAL",
    //   "requestedReferenceRoutes": ["FUEL_EFFICIENT"],
    //   "vehicleInfo": {"emissionType": "GASOLINE"}
    // };
    print(body);
    final Response response = await post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final Map<String, List<RouteResponse>> routes = {};
      for (final String key in json.keys) {
        routes[key] = (json[key] as List)
            .map((dynamic e) =>
                RouteResponse.fromJson(e as Map<String, dynamic>))
            .toList();
      }
      return routes;
    } else {
      print(response.body);
      throw Exception('Failed to get route');
    }
  }

  Future<Map<String, List<RouteResponse>>> getRouteTransit(
      {required String origin,
      required String destination,
      required RouteType routeType}) async {
    final String url = '$_baseUrl/transport/transit';
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    final Map<String, dynamic> body = {
      'origin': origin,
      'destination': destination,
      'routeType': routeType.toString().split('.').last,
    };
    final Response response = await post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final Map<String, List<RouteResponse>> routes = {};
      for (final String key in json.keys) {
        routes[key] = (json[key] as List)
            .map((dynamic e) =>
                RouteResponse.fromJson(e as Map<String, dynamic>))
            .toList();
      }
      return routes;
    } else {
      throw Exception('Failed to get route');
    }
  }
}
