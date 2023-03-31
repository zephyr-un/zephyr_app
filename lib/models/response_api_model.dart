class RouteResponse {
  final int distance;
  final int duration;
  final String fuelType;
  final String polyline;
  final int fuelConsumptionMicroliters;
  final List routeLabels;
  final int savedConsumption;
  final int savedEmmissions;

  RouteResponse({
    required this.distance,
    required this.duration,
    required this.fuelType,
    required this.polyline,
    required this.fuelConsumptionMicroliters,
    required this.routeLabels,
    required this.savedConsumption,
    required this.savedEmmissions,
  });

  factory RouteResponse.fromJson(Map<String, dynamic> json) {
    return RouteResponse(
      distance: json['distance'] as int,
      duration: json['duration'] as int,
      fuelConsumptionMicroliters: json['fuelConsumptionMicroliters'] as int,
      routeLabels: json['routeLabels'] as List,
      savedConsumption: json['savedConsumption'] as int,
      savedEmmissions: json['savedEmmissions'] as int,
      fuelType: json['fuelType'] as String,
      polyline: json['polyline'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'distance': distance,
        'duration': duration,
        'fuelConsumptionMicroliters': fuelConsumptionMicroliters,
        'routeLabels': routeLabels,
        'savedConsumption': savedConsumption,
        'savedEmmissions': savedEmmissions,
        'fuelType': fuelType,
        'polyline': polyline,
      };
}
