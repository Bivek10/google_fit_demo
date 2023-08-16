import 'package:flutter/material.dart';
import 'package:google_fit_demo/src/model/foot_setps.dart';
import '../../../model/blood_glucose.dart';
import '../../../repo/health_repository.dart';

class HomeController {
  final repository = HealthRepository();
  final blodGlucoses = ValueNotifier(<BloodGlucose>[]);
  final steps = ValueNotifier(<FootSteps>[]);
  Future<void> getData() async {
    blodGlucoses.value = await repository.getBloodGlucose();
    steps.value = await repository.getFootSteep();
  }
}
