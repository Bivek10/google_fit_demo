import 'package:flutter/material.dart';

import '../../model/blood_glucose.dart';

class HealthCard extends StatelessWidget {
  final BloodGlucose bloodGlucose;

  const HealthCard({super.key, required this.bloodGlucose});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            bloodGlucose.value.toStringAsFixed(2),
            style: const TextStyle(fontSize: 24),
          ),
          Text(bloodGlucose.unit),
          Text(
            bloodGlucose.dateFrom.toString(),
          ),
        ],
      ),
    );
  }
}
