import 'package:flutter/material.dart';
import 'package:google_fit_demo/src/screen/pages/home/home_controller.dart';
import 'package:google_fit_demo/src/screen/widgets/HealthCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health Data')),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => controller.getData(),
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: controller.blodGlucoses,
        builder: (context, value, child) {
          return GridView(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              children: [
                for (final bloodGlucose in value)
                  HealthCard(bloodGlucose: bloodGlucose),
              ]);
        },
      ),
    );
  }
}
