// HomePage.dart
import 'package:flutter/material.dart';
import '../components/HealthMetric.dart';
import '../components/GlucoseLevelChart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example data for glucose levels and time labels
    final List<double> glucoseLevels = [110, 120, 100, 90, 115, 130, 140];
    final List<String> timeLabels = ['12:00', '12:15', '12:30', '12:45', '1:00', '1:15', '1:30'];

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Health Metrics',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Glucose Level (mg/dL)'),
            GlucoseLevelChart(
              glucoseLevels: glucoseLevels,
              timeLabels: timeLabels,
            ),
            const SizedBox(height: 70),
            // Using the HealthMetric component
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HealthMetric(name: 'Pulse', value: '75', unit: 'BPM'),
                HealthMetric(name: 'Systolic', value: '120', unit: 'mmHg'),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HealthMetric(name: 'Diastolic', value: '80', unit: 'mmHg'),
                HealthMetric(name: 'Dlucose', value: '115', unit: 'mg/dL'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}










//
// // HomePage.dart
// import 'package:flutter/material.dart';
// import '../components/HealthMetric.dart';
// import '../components/GlucoseLevelChart.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Health Metrics',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             const Text('Glucose Level (mg/dL)'),
//             // Placeholder for glucose level chart widget
//             Container(
//               height: 200,
//               color: Colors.grey[300],
//               child: const Center(child: Text('Glucose Chart')),
//             ),
//             const SizedBox(height: 70),
//             // Using the HealthMetric component
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 HealthMetric(name: 'Pulse', value: '75', unit: 'BPM'),
//                 HealthMetric(name: 'Systolic', value: '120', unit: 'mmHg'),
//               ],
//             ),
//             const SizedBox(height: 20),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 HealthMetric(name: 'Diastolic', value: '80', unit: 'mmHg'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
