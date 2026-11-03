import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../quran/presentation/screens/quran_screen.dart';
import '../../../prayer/presentation/screens/prayer_times_screen.dart';
import '../../../qibla/presentation/screens/qibla_compass_screen.dart';
import '../../../adhkar/presentation/screens/adhkar_tasbih_screen.dart';
import '../../../hadith/presentation/screens/hadith_screen.dart';
import '../../../islamic_ai/presentation/screens/refique_ayat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('آيات | AYAT'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.elegantGold),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: AppColors.elegantGold),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.deepEmerald, Color(0xFF134E38)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.elegantGold.withOpacity(0.3)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أهلاً بك، الباحث عن القرآن',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.pureWhite),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '15 جمادى الآخرة 1447 هـ',
                    style: TextStyle(fontSize: 16, color: AppColors.elegantGold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '﴿ وَرَتِّلِ الْقُرْآنَ تَرْتِيلًا ﴾',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: AppColors.pureWhite),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: AppColors.cardDark,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.between,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الصلاة القادمة: العصر', style: TextStyle(fontSize: 16, color: AppColors.softGray)),
                        SizedBox(height: 4),
                        Text('03:45 م', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.elegantGold)),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.deepEmerald),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const PrayerTimesScreen()));
                      },
                      child: const Text('أوقات الصلاة', style: TextStyle(color: AppColors.pureWhite)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('الوصول السريع', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.elegantGold)),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                _buildQuickAccessItem(Icons.menu_book, 'القرآن', () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const QuranScreen()));
                }),
                _buildQuickAccessItem(Icons.headset, 'التلاوات', () {}),
                _buildQuickAccessItem(Icons.library_books, 'التفسير', () {}),
                _buildQuickAccessItem(Icons.auto_stories, 'الحديث', () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const HadithScreen()));
                }),
                _buildQuickAccessItem(Icons.smart_toy, 'رفيق آيات', () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const RefiqueAyatScreen()));
                }),
                _buildQuickAccessItem(Icons.explore, 'القبلة', () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const QiblaCompassScreen()));
                }),
                _buildQuickAccessItem(Icons.wb_sunny, 'الأذكار', () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const AdhkarTasbihScreen()));
                }),
                _buildQuickAccessItem(Icons.calendar_month, 'التقويم', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardDark,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.elegantGold.withOpacity(0.2)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.elegantGold, size: 28),
            const SizedBox(height: 6),
            Text(label, style: const TextStyle(fontSize: 12, color: AppColors.pureWhite)),
          ],
        ),
      ),
    );
  }
}
