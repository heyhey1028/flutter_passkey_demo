import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('完了'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('決済が完了しました', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => context.pushReplacement('/', extra: {'noAnimation': true}),
              child: const Text('トップページに戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
