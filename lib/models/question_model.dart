import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';

class QuestionModel {
  final String questionTitle;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.questionTitle,
    required this.answers,
  });
}

List<QuestionModel> questions = [
  QuestionModel(
    questionTitle: "What is your favorite sport?",
    answers: [
      AnswerModel(
        icon: Icons.sports_soccer,
        title: 'Football',
        onPress: () => debugPrint("Footbal Choice!"),
      ),
      AnswerModel(
        icon: Icons.sports_tennis,
        title: 'Tenis',
        onPress: () => debugPrint("Tenis Choice!"),
      ),
      AnswerModel(
        icon: Icons.sports_volleyball,
        title: 'Volleyball',
        onPress: () =>
            debugPrint("Volleyball Choice!"),
      ),
    ],
  ),
  QuestionModel(
    questionTitle: "What is your favorite color?",
    answers: [
      AnswerModel(
        icon: Icons.flag,
        title: 'Red',
        onPress: () => debugPrint("Red Choice!"),
      ),
      AnswerModel(
        icon: Icons.flag,
        title: 'Green',
        onPress: () => debugPrint("Green Choice!"),
      ),
      AnswerModel(
        icon: Icons.flag,
        title: 'Blue',
        onPress: () => debugPrint("Blue Choice!"),
      ),
    ],
  ),
  QuestionModel(
    questionTitle: "What is your favorite animal?",
    answers: [
      AnswerModel(
        icon: Icons.circle,
        title: 'Lion',
        onPress: () => debugPrint("Lion Choice!"),
      ),
      AnswerModel(
        icon: Icons.square,
        title: 'Donkey',
        onPress: () => debugPrint("Donkey Choice!"),
      ),
      AnswerModel(
        icon: Icons.rectangle,
        title: 'Monkey',
        onPress: () => debugPrint("Monkey Choice!"),
      ),
    ],
  ),
];
