import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Barbara",
      photoUrl:
          "https://avatars.githubusercontent.com/u/19915950?s=400&u=e588dfd8d27fda2e7b875217fa41be14c372ead9&v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          image: AppImages.blocks,
          title: 'NLW 5 - Flutter',
          questionAnswered: 1,
          level: Level.facil,
          questions: [
            QuestionModel(title: 'Está curtindo o Flutter?', answers: [
              AnswerModel(title: 'Estou curtindo'),
              AnswerModel(title: 'Amando flutter'),
              AnswerModel(title: 'Muito bom'),
              AnswerModel(title: 'Show de bola', isRight: true),
            ]),
            QuestionModel(title: 'Está curtindo o Flutter?', answers: [
              AnswerModel(title: 'Estou curtindo'),
              AnswerModel(title: 'Amando flutter'),
              AnswerModel(title: 'Muito bom'),
              AnswerModel(title: 'Show de bola', isRight: true),
            ])
          ])
    ];
  }
}
