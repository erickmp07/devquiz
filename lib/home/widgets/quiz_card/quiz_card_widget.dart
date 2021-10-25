import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final int questionsAnswered;
  final int totalQuestions;
  final String image;

  const QuizCardWidget(
      {Key? key,
      required this.title,
      required this.questionsAnswered,
      required this.totalQuestions,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(this.image),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            this.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "$questionsAnswered of $totalQuestions",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(
                  value: questionsAnswered / totalQuestions,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
