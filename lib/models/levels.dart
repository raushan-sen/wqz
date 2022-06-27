import 'dart:convert';

import 'package:flutter/foundation.dart';

class Levels {
  final List level;
  Levels({
    required this.level,
  });

  Levels copyWith({
    List? level,
  }) {
    return Levels(
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'level': level,
    };
  }

  factory Levels.fromMap(Map<String, dynamic> map) {
    return Levels(
      level: List.from(map['level']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Levels.fromJson(String source) => Levels.fromMap(json.decode(source));

  @override
  String toString() => 'Levels(level: $level)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Levels &&
      listEquals(other.level, level);
  }

  @override
  int get hashCode => level.hashCode;
}
