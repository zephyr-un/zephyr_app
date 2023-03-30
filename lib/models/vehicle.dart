enum VehicleType { car, bicycle }

enum FuelType { gasoline, diesel, electric, hybrid }

class VehicleModel {
  final VehicleType vehicleType;
  final FuelType fuelType;
  final String vehicleName;

  VehicleModel({
    required this.vehicleType,
    required this.fuelType,
    required this.vehicleName,
  });

  factory VehicleModel.fromMap(Map<String, dynamic> data) {
    return VehicleModel(
      vehicleType: VehicleType.values.firstWhere(
        (e) => e.toString() == data['vehicleType'],
      ),
      fuelType: FuelType.values.firstWhere(
        (e) => e.toString() == data['fuelType'],
      ),
      vehicleName: data['vehicleName'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'vehicleType': vehicleType.toString(),
      'fuelType': fuelType.toString(),
      'vehicleName': vehicleName,
    };
  }
}
