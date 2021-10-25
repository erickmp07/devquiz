import 'package:flutter/foundation.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state_enum.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  HomeState get state => stateNotifier.value;
  set state(HomeState state) => stateNotifier.value = state;

  UserModel? user;
  List<QuizModel>? quizzes;

  final homeRepository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await homeRepository.getUser();

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    quizzes = await homeRepository.getQuizzes();

    state = HomeState.success;
  }
}
