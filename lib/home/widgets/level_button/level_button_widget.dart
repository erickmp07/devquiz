import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(["Easy", "Medium", "Hard", "Expert"].contains(label)),
        super(key: key);

  final config = {
    "Easy": {
      "color": AppColors.levelButtonEasy,
      "border": AppColors.levelButtonBorderEasy,
      "text": AppColors.levelButtonTextEasy
    },
    "Medium": {
      "color": AppColors.levelButtonMedium,
      "border": AppColors.levelButtonBorderMedium,
      "text": AppColors.levelButtonTextMedium
    },
    "Hard": {
      "color": AppColors.levelButtonHard,
      "border": AppColors.levelButtonBorderHard,
      "text": AppColors.levelButtonTextHard
    },
    "Expert": {
      "color": AppColors.levelButtonExpert,
      "border": AppColors.levelButtonBorderExpert,
      "text": AppColors.levelButtonTextExpert
    }
  };

  Color get color => config[label]!["color"]!;
  Color get border => config[label]!["border"]!;
  Color get text => config[label]!["text"]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          border: Border.fromBorderSide(BorderSide(color: border)),
          borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child:
            Text(label, style: GoogleFonts.notoSans(color: text, fontSize: 13)),
      ),
    );
  }
}
