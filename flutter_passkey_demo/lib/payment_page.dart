import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'completed_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('決済'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('スライドして決済を完了してください'),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SlideAction(
                text: 'スライドして決済を完了',
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
