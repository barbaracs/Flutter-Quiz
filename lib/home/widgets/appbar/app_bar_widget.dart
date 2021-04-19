import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: "Barbara",
                                  style: AppTextStyles.titleBold)
                            ])),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/19915950?s=400&u=e588dfd8d27fda2e7b875217fa41be14c372ead9&v=4"))),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
                ],
              )),
        );
}
