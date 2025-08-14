import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/question_item.dart';
import 'package:quiz_app/widgets/total_score.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0, myScore = 0, step = 1;
  int answerChosen = -1;
  int totalScore = questions.length * 10;
  bool showScore = false;
  @override
  Widget build(BuildContext context) {
    showScore = myScore >= totalScore;
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        5,
        0,
        0,
        0,
      ),
      body: SafeArea(
        child: !showScore
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    QuestionItem(
                      question: questions[index],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Step $step of ${questions.length}',
                    ),
                    const SizedBox(
                      width: 75,
                      child: Divider(
                        thickness: 2,
                        color: Colors.green,
                      ),
                    ),
                    Column(
                      children: List.generate(
                        questions[index]
                            .answers
                            .length,
                        (i) => AnswerItem(
                          answer: questions[index]
                              .answers[i],
                          isAnswerChosen:
                              answerChosen == i,
                          chanegeState: () {
                            setState(() {
                              answerChosen = i;
                            });
                          },
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                12,
                              ),
                        ),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (answerChosen != -1) {
                          setState(() {
                            if (index <
                                questions.length) {
                              index++;
                            }
                            myScore += 10;
                            answerChosen = -1;
                            step++;
                            if (step >
                                questions.length) {
                              step = 1;
                            }
                          });
                        }
                      },
                      child: const SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Center(
                          child: Text('Next'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : TotalScore(
                myScore: myScore,
                onPress: () => setState(() {
                  index = 0;
                  myScore = 0;
                }),
              ),
      ),
    );
  }
}
