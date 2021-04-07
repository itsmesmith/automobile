import 'package:google_maps_flutter/google_maps_flutter.dart';

class User {
  final String name;
  final LatLng location;
  final String phone;

  User(this.name,this.location,this.phone);
}
final List<User> userLists= [
  User('Samakhusi', LatLng(27.727266, 85.317497), '9847351074'),
  User('Satdobato', LatLng(27.651536, 85.327837), '9847122585')
];

