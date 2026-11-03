import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  final List<Map<String, dynamic>> surahs = const [
    {'number': 1, 'name': 'الفاتحة', 'type': 'مكية', 'verses': 7},
    {'number': 2, 'name': 'البقرة', 'type': 'مدنية', 'verses': 286},
    {'number': 3, 'name': 'آل عمران', 'type': 'مدنية', 'verses': 200},
    {'number': 4, 'name': 'النساء', 'type': 'مدنية', 'verses': 176},
    {'number': 18, 'name': 'الكهف', 'type': 'مكية', 'verses': 110},
    {'number': 36, 'name': 'يس', 'type': 'مكية', 'verses': 83},
    {'number': 67, 'name': 'الملك', 'type': 'مكية', 'verses': 30},
    {'number': 112, 'name': 'الإخلاص', 'type': 'مكية', 'verses': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('القرآن الكريم'),
      ),
      body: ListView.builder(
        itemCount: surahs.length,
        itemBuilder: (context, index) {
          final item = surahs[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.deepEmerald,
              child: Text('${item['number']}', style: const TextStyle(color: AppColors.elegantGold)),
            ),
            title: Text('سورة ${item['name']}', style: const TextStyle(fontSize: 18, color: AppColors.pureWhite)),
            subtitle: Text('${item['type']} • ${item['verses']} آيات', style: const TextStyle(color: AppColors.softGray)),
            trailing: const Icon(Icons.bookmark_border, color: AppColors.elegantGold),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('فتح سورة ${item['name']}')),
              );
            },
          );
        },
      ),
    );
  }
}
