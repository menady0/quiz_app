import 'package:flutter/material.dart';

class TotalScore extends StatelessWidget {
  final int myScore;
  final VoidCallback onPress;
  const TotalScore({
    super.key,
    required this.myScore,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Congratulation!',
            style: TextStyle(
              fontSize: 36,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Your score is: $myScore',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 75,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              onPressed: onPress,
              child: const Icon(
                Icons.restart_alt,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
