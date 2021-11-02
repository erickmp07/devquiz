import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: "What does Flutter do in its entirety?",
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Skip",
                onTap: () {},
              )),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Confirm",
                onTap: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
