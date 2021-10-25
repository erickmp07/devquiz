import 'dart:convert';

import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/shared/enums/extensions/level_extension.dart';
import 'package:DevQuiz/shared/enums/extensions/level_string_extension.dart';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      this.questionsAnswered = 0,
      required this.image,
      required this.level});

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "questions": questions.map((question) => question.toMap()).toList(),
      "questionsAnswered": questionsAnswered,
      "image": image,
      "level": level.parse
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
        title: map["title"],
        questions: List<QuestionModel>.from(map["questions"]
            ?.map((question) => QuestionModel.fromMap(question))),
        questionsAnswered: map["questionsAnswered"],
        image: AppImages.getImageByName(map["image"]),
        level: map["level"].toString().parse);
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
