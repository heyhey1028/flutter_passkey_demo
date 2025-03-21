import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'completed_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('Slide to complete payment'),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SlideAction(
                text: 'Slide to complete payment',
                textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                outerColor: Colors.grey[200],
                innerColor: Theme.of(context).primaryColor,
                sliderButtonIcon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                sliderRotate: false,
                animationDuration: const Duration(milliseconds: 500),
                onSubmit: () {
                  Future.delayed(
                    const Duration(milliseconds: 200),
                    () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const CompletedPage()),
                    ),
                  );
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
