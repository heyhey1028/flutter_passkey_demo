import 'package:flutter/material.dart';
import 'top_page.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment Completed'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Payment Completed', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => const TopPage(),
                    transitionDuration: Duration.zero,
                  ),
                  (route) => false,
                ),
                child: const Text('Back to Top'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
