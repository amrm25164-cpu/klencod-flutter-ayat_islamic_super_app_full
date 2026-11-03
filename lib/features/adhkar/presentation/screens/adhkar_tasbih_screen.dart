import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class AdhkarTasbihScreen extends StatefulWidget {
  const AdhkarTasbihScreen({super.key});

  @override
  State<AdhkarTasbihScreen> createState() => _AdhkarTasbihScreenState();
}

class _AdhkarTasbihScreenState extends State<AdhkarTasbihScreen> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السبحة الرقمية والأذكار'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.pureWhite),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: _increment,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.deepEmerald,
                  border: Border.all(color: AppColors.elegantGold, width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.deepEmerald.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '$_counter',
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: AppColors.elegantGold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            IconButton(
              icon: const Icon(Icons.refresh, size: 32, color: AppColors.softGray),
              onPressed: _reset,
            ),
          ],
        ),
      ),
    );
  }
}
