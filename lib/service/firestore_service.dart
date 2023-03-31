import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:zephyr_app/models/user.dart';
import 'package:zephyr_app/models/vehicle.dart';

class DataBaseService {
  final String uid;
  DataBaseService({required this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  /// Create a new user document
  Future<bool> createUserData(UserModel newUser) async {
    try {
      await userCollection.doc(uid).set(newUser.toMap());
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Update user data
  /// [newUser] is the new user data
  Future<bool> updateUserData(var updates) async {
    if (updates is! Map<String, dynamic>)
      throw Exception('Updates must be a Map<String, dynamic>');
    try {
      await userCollection.doc(uid).update(updates);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Get user data
  Future<UserModel> getUserData() async {
    try {
      DocumentSnapshot doc = await userCollection.doc(uid).get();
      return UserModel.fromMap(doc.data()! as Map<String, dynamic>);
    } catch (e) {
      print(e.toString());
      return UserModel(
        uid: '',
        displayName: '',
        email: '',
        authType: AuthType.email,
      );
    }
  }

  /// Get user data stream
  Stream<UserModel> get userData {
    return userCollection.doc(uid).snapshots().map((doc) {
      return UserModel.fromMap(doc.data()! as Map<String, dynamic>);
    });
  }

  /// Get Vehicle data
  Future<VehicleModel> getVehicleData() async {
    try {
      DocumentSnapshot doc = await userCollection.doc(uid).get();
      return VehicleModel.fromMap(
          (doc.data()! as Map<String, dynamic>)['vehicle']);
    } catch (e) {
      print(e.toString());
      return VehicleModel(
        vehicleType: VehicleType.car,
        fuelType: FuelType.gasoline,
        vehicleName: '',
      );
    }
  }

  /// Get Vehicle data stream
  /// [uid] is the user id
  Stream<VehicleModel> get vehicleData {
    return userCollection.doc(uid).snapshots().map((doc) {
      return VehicleModel.fromMap(
          (doc.data()! as Map<String, dynamic>)['vehicle']);
    });
  }

  /// Set Vehicle data
  /// [newVehicle] is the new vehicle data
  Future<bool> setVehicleData(VehicleModel newVehicle) async {
    try {
      await userCollection.doc(uid).update({'vehicle': newVehicle.toMap()});
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  // Update Emissions
  Future<bool> updateEmissions(Map<String, int> emissions) async {
    try {
      UserModel current;
      // Fetch user data
      DocumentSnapshot doc = await userCollection.doc(uid).get();
      Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
      UserModel user = UserModel.fromMap(data);
      // Add new emissions to old emissions
      current = UserModel(
        uid: user.uid,
        displayName: user.displayName,
        email: user.email,
        authType: user.authType,
        carbonFootprint: user.carbonFootprint! + emissions['carbonFootprint']!,
        carbonFootprintGoal: user.carbonFootprintGoal!,
        carbonFootprintSaved:
            user.carbonFootprintSaved! + emissions['carbonFootprintSaved']!,
        vehicle: user.vehicle,
      );
      await userCollection.doc(uid).update({
        'carbonFootprint': current.carbonFootprint,
        'carbonFootprintSaved': current.carbonFootprintSaved,
      });
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
