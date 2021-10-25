import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/home/home_state_enum.dart';
import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();

    homeController.getUser();
    homeController.getQuizzes();

    homeController.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (homeController.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          userModel: homeController.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: "Easy",
                ),
                LevelButtonWidget(
                  label: "Medium",
                ),
                LevelButtonWidget(
                  label: "Hard",
                ),
                LevelButtonWidget(
                  label: "Expert",
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                children: homeController.quizzes!
                    .map((quiz) => QuizCardWidget(
                          title: quiz.title,
                          questionsAnswered: quiz.questionsAnswered,
                          totalQuestions: quiz.questions.length,
                          image: quiz.image,
                        ))
                    .toList(),
              ),
            )
          ]),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
