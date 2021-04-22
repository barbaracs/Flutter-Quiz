import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(height: 64),
        Text(title, style: AppTextStyles.heading),
        SizedBox(height: 24),
        AnswerWidget(
          isRight: true,
          isSelected: true,
          title: "Possibilita a criação de aplicativos compilados nativamente",
        ),
        AnswerWidget(
          isRight: false,
          isSelected: true,
          title: "Possibilita a criação de aplicativos compilados nativamente",
        ),
        AnswerWidget(
          isRight: true,
          isSelected: false,
          title: "Possibilita a criação de aplicativos compilados nativamente",
        ),
        AnswerWidget(
          isRight: false,
          isSelected: false,
          title: "Possibilita a criação de aplicativos compilados nativamente",
        ),
      ],
    ));
  }
}
