import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state_enum.dart';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: "Erick",
        photoUrl: "https://avatars.githubusercontent.com/u/16216886?v=4");
  }

  void getQuizzes() {
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
  }
}
