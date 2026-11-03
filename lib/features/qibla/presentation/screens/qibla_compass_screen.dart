import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class QiblaCompassScreen extends StatelessWidget {
  const QiblaCompassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بوصلة القبلة'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 260,
                  height: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.elegantGold, width: 4),
                    color: AppColors.cardDark,
                  ),
                ),
                const Icon(Icons.navigation, size: 120, color: AppColors.deepEmerald),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'اتجاه القبلة: 136° جنوب الشرادي',
              style: TextStyle(fontSize: 18, color: AppColors.pureWhite, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'ضع الهاتف على سطح مستوٍ للحصول على أعلى دقة',
              style: TextStyle(color: AppColors.softGray),
            ),
          ],
        ),
      ),
    );
  }
}
