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
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            const Center(
              child: Text('Payment Completed', style: TextStyle(fontSize: 20)),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 32,
              child: Center(
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const TopPage(),
                      transitionDuration: Duration.zero,
                    ),
                    (route) => false,
                  ),
                  child: const Text('Back to Top'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
