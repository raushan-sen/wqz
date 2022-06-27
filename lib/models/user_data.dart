import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserData {
  final int id;
  final String name;
  final String email;
  final int token;
  final String profile;
  final List completed;
  final List unlocked;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.profile,
    required this.completed,
    required this.unlocked,
  });

  UserData copyWith({
    int? id,
    String? name,
    String? email,
    int? token,
    String? profile,
    List? completed,
    List? unlocked,
  }) {
    return UserData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      token: token ?? this.token,
      profile: profile ?? this.profile,
      completed: completed ?? this.completed,
      unlocked: unlocked ?? this.unlocked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'token': token,
      'profile': profile,
      'completed': completed,
      'unlocked': unlocked,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      token: map['token']?.toInt() ?? 0,
      profile: map['profile'] ?? '',
      completed: List.from(map['completed']),
      unlocked: List.from(map['unlocked']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserData(id: $id, name: $name, email: $email, token: $token, profile: $profile, completed: $completed, unlocked: $unlocked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserData &&
      other.id == id &&
      other.name == name &&
      other.email == email &&
      other.token == token &&
      other.profile == profile &&
      listEquals(other.completed, completed) &&
      listEquals(other.unlocked, unlocked);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      token.hashCode ^
      profile.hashCode ^
      completed.hashCode ^
      unlocked.hashCode;
  }
}

var publicdata = [
  UserData(
      id: 1,
      name: "Subham",
      email: "email",
      token: 20,
      profile: "profile",
      completed: [],
      unlocked:[]
      ),
  UserData(
      id: 2,
      name: "Ravi",
      email: "email",
      token: 23,
      profile: "profile",
      completed: [],
      unlocked:[])
];
