import 'dart:convert';

class GameData {
  final int id;
  final String question;
  final String optionA;
  final String optionB;
  final String optionC;
  final String optionD;
  final String correctoption;
  final String description;
  GameData({
    required this.id,
    required this.question,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    required this.correctoption,
    required this.description,
  });

  GameData copyWith({
    int? id,
    String? question,
    String? optionA,
    String? optionB,
    String? optionC,
    String? optionD,
    String? correctoption,
    String? description,
  }) {
    return GameData(
      id: id ?? this.id,
      question: question ?? this.question,
      optionA: optionA ?? this.optionA,
      optionB: optionB ?? this.optionB,
      optionC: optionC ?? this.optionC,
      optionD: optionD ?? this.optionD,
      correctoption: correctoption ?? this.correctoption,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'optionA': optionA,
      'optionB': optionB,
      'optionC': optionC,
      'optionD': optionD,
      'correctoption': correctoption,
      'description': description,
    };
  }

  factory GameData.fromMap(Map<String, dynamic> map) {
    return GameData(
      id: map['id']?.toInt() ?? 0,
      question: map['question'] ?? '',
      optionA: map['optionA'] ?? '',
      optionB: map['optionB'] ?? '',
      optionC: map['optionC'] ?? '',
      optionD: map['optionD'] ?? '',
      correctoption: map['correctoption'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GameData.fromJson(String source) =>
      GameData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GameData(id: $id, question: $question, optionA: $optionA, optionB: $optionB, optionC: $optionC, optionD: $optionD, correctoption: $correctoption, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GameData &&
        other.id == id &&
        other.question == question &&
        other.optionA == optionA &&
        other.optionB == optionB &&
        other.optionC == optionC &&
        other.optionD == optionD &&
        other.correctoption == correctoption &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        optionA.hashCode ^
        optionB.hashCode ^
        optionC.hashCode ^
        optionD.hashCode ^
        correctoption.hashCode ^
        description.hashCode;
  }
}



var basic = [
  GameData(
      id: 1,
      question: "question",
      optionA: "optionA",
      optionB: "optionB",
      optionC: "optionC",
      optionD: "optionD",
      correctoption: "correctoption",
      description: "description"),
  GameData(
      id: 2,
      question: "question",
      optionA: "optionA",
      optionB: "optionB",
      optionC: "optionC",
      optionD: "optionD",
      correctoption: "correctoption",
      description: "description")
];
