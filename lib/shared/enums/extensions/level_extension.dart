import 'package:DevQuiz/shared/enums/level_enum.dart';

extension LevelExt on Level {
  String get parse => {
        Level.easy: "easy",
        Level.medium: "medium",
        Level.hard: "hard",
        Level.expert: "expert"
      }[this]!;
}
