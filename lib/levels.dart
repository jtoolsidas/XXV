class GameLevel {
  final int level; // The level identifier
  final List<int> numbers; // The four associated numbers

  GameLevel({required this.level, required this.numbers});

  // Factory constructor to create a GameLevel instance from JSON
  factory GameLevel.fromJson(Map<String, dynamic> json) {
    return GameLevel(
      level: int.parse(json['fields']['Level'].toString()),
      numbers: [
        json['fields']['Number1'],
        json['fields']['Number2'],
        json['fields']['Number3'],
        json['fields']['Number4'],
      ].map((e) => int.parse(e.toString())).toList(),
    );
  }
}