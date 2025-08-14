import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerModel answer;
  final bool isAnswerChosen;
  final VoidCallback chanegeState;

  const AnswerItem({
    super.key,
    required this.answer,
    required this.chanegeState,
    required this.isAnswerChosen,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: InkWell(
          onTap: () {
            answer.onPress();
            chanegeState();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
              color: isAnswerChosen
                  ? Colors.green
                  : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    answer.icon,
                    size: 30,
                    color: isAnswerChosen
                        ? Colors.white
                        : Colors.black,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    answer.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                          color: isAnswerChosen
                              ? Colors.white
                              : Colors.black,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
