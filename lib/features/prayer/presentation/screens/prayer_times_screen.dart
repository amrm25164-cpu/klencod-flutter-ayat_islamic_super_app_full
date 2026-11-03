import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> times = [
      {'name': 'الفجر', 'time': '04:52 ص'},
      {'name': 'الشروق', 'time': '06:18 ص'},
      {'name': 'الظهر', 'time': '11:58 ص'},
      {'name': 'العصر', 'time': '03:15 م'},
      {'name': 'المغرب', 'time': '05:38 م'},
      {'name': 'العشاء', 'time': '07:08 م'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('مواقيت الصلاة'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: times.length,
        itemBuilder: (context, index) {
          final p = times[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.cardDark,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.elegantGold.withOpacity(0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.between,
              children: [
                Text(p['name']!, style: const TextStyle(fontSize: 18, color: AppColors.pureWhite)),
                Text(p['time']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.elegantGold)),
              ],
            ),
          );
        },
      ),
    );
  }
}
