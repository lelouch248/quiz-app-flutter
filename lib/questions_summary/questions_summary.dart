import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 340,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: summaryData.map((data) {
                return SummaryItem(data: data);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
