import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'integrante_model.dart';

class UserModel {
  final String objectId;
  final String username;
  final String name;
  final bool visible;
  final String sessionToken;
  final double distance;
  final List<IntegranteModel> integrantes;

  UserModel({
    required this.objectId,
    required this.username,
    required this.name,
    required this.visible,
    required this.sessionToken,
    required this.distance,
    required this.integrantes,
  });

  UserModel copyWith({
    String? objectId,
    String? username,
    String? name,
    bool? visible,
    String? sessionToken,
    double? distance,
    List<IntegranteModel>? integrantes,
  }) {
    return UserModel(
      objectId: objectId ?? this.objectId,
      username: username ?? this.username,
      name: name ?? this.name,
      visible: visible ?? this.visible,
      sessionToken: sessionToken ?? this.sessionToken,
      distance: distance ?? this.distance,
      integrantes: integrantes ?? this.integrantes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'username': username,
      'name': name,
      'visible': visible,
      'sessionToken': sessionToken,
      'distance': distance,
      'integrantes': integrantes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      objectId: map['objectId'] as String,
      username: map['username'] as String,
      name: map['name'] as String,
      visible: map['visible'] as bool,
      sessionToken: map['sessionToken'] as String,
      distance: map['distance'] as double,
      integrantes: List<IntegranteModel>.from(
        (map['integrantes'] as List).map<IntegranteModel>(
          (x) => IntegranteModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(objectId: $objectId, username: $username, name: $name, visible: $visible, sessionToken: $sessionToken, distance: $distance, integrantes: $integrantes)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.objectId == objectId &&
        other.username == username &&
        other.name == name &&
        other.visible == visible &&
        other.sessionToken == sessionToken &&
        other.distance == distance &&
        listEquals(other.integrantes, integrantes);
  }

  @override
  int get hashCode {
    return objectId.hashCode ^
        username.hashCode ^
        name.hashCode ^
        visible.hashCode ^
        sessionToken.hashCode ^
        distance.hashCode ^
        integrantes.hashCode;
  }
}
