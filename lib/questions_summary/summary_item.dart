import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: data['correct_answer'] == data['user_choice'],
            questionIndex: data['question_index'] as int,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: TextStyle(
                      color: Colors.purple.shade100,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    data['correct_answer'] as String,
                    style: TextStyle(
                      color: Colors.purple.shade300,
                      fontSize: 13.0,
                    ),
                  ),
                  Text(
                    data['user_choice'] as String,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
