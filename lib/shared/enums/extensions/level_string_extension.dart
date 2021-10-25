import 'package:DevQuiz/shared/enums/level_enum.dart';

extension LevelStringExt on String {
  Level get parse => {
        "easy": Level.easy,
        "medium": Level.medium,
        "hard": Level.hard,
        "expert": Level.expert
      }[this]!;
}
