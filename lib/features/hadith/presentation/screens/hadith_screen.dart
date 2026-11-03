import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  final List<Map<String, String>> books = const [
    {'title': 'صحيح البخاري', 'desc': 'المجاميع الحديثية الصحيحة كاملة'},
    {'title': 'صحيح مسلم', 'desc': 'أحاديث صحيح مسلم المعزوة'},
    {'title': 'سنن أبي داود', 'desc': 'مجموعة السنن والأحكام الشرعية'},
    {'title': 'جامع الترمذي', 'desc': 'الأحاديث والعلل والفوائد'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('موسوعة الحديث الشريف'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final b = books[index];
          return Card(
            color: AppColors.cardDark,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.auto_stories, color: AppColors.elegantGold),
              title: Text(b['title']!, style: const TextStyle(color: AppColors.pureWhite, fontSize: 18)),
              subtitle: Text(b['desc']!, style: const TextStyle(color: AppColors.softGray)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.softGray),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
