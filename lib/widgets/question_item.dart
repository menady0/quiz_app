import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionModel question;
  const QuestionItem({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.questionTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(height: 10),
          Text(
            'Answer and get points!',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
