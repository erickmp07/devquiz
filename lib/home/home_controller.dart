import 'package:flutter/foundation.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state_enum.dart';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  HomeState get state => stateNotifier.value;
  set state(HomeState state) => stateNotifier.value = state;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;

    user = UserModel(
        name: "Erick",
        photoUrl: "https://avatars.githubusercontent.com/u/16216886?v=4");

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    quizzes = [
      QuizModel(
          title: "State Management",
          questions: [
            QuestionModel(
                title: "What does Flutter do in its entirety?",
                answers: [
                  AnswerModel(
                      title:
                          "Enables the creation of natively compiled applications"),
                  AnswerModel(
                      title:
                          "Enables the creation of natively compiled applications"),
                  AnswerModel(
                      title:
                          "Enables the creation of natively compiled applications"),
                  AnswerModel(
                      title:
                          "Enables the creation of natively compiled applications",
                      isRight: true),
                ])
          ],
          image: AppImages.blocks,
          level: Level.easy)
    ];

    state = HomeState.success;
  }
}
