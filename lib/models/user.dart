import 'package:zephyr_app/models/vehicle.dart';

enum AuthType { google, email }

class UserModel {
  final String uid;
  final String displayName;
  final String email;
  final AuthType authType;
  final int? carbonFootprint;
  final int? carbonFootprintGoal;
  final VehicleModel? vehicle;
  final int? carbonFootprintSaved;

  UserModel({
    required this.uid,
    required this.displayName,
    required this.email,
    required this.authType,
    this.carbonFootprint,
    this.vehicle,
    this.carbonFootprintGoal,
    this.carbonFootprintSaved,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      displayName: data['displayName'],
      email: data['email'],
      authType: AuthType.values.firstWhere(
        (e) => e.toString() == data['authType'],
      ),
      carbonFootprint: data['carbonFootprint'],
      carbonFootprintGoal: data['carbonFootprintGoal'],
      carbonFootprintSaved: data['carbonFootprintSaved'],
      vehicle: data['vehicle'] != null
          ? VehicleModel.fromMap(data['vehicle'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'authType': authType.toString(),
      'carbonFootprint': carbonFootprint ?? 0,
      'carbonFootprintGoal': carbonFootprintGoal ?? 0,
      'carbonFootprintSaved': carbonFootprintSaved ?? 0,
      'vehicle': vehicle != null ? vehicle!.toMap() : null,
    };
  }
}
