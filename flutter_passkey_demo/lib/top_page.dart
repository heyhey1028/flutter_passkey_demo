import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'payment_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  Future<void> _handleLogout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Logged out successfully')),
        );
        // Add navigation to login screen here
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to logout: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final screenHeight = MediaQuery.of(context).size.height;

    // Print user ID when screen is built
    print('Current user ID: ${user?.uid}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Passkey Demo'),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: screenHeight * 0.25), // Position at 1/4 of screen height
              if (user != null)
                FutureBuilder<DocumentSnapshot>(
                  future: FirebaseFirestore.instance.collection('users').doc(user.uid).get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    print('Snapshot data: ${snapshot.data}');
                    if (snapshot.hasData) {
                      print('User data: ${snapshot.data?.data()}');
                      final userData = snapshot.data!.data() as Map<String, dynamic>?;
                      final name = userData?['name'] as String? ?? 'User';
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '👋 Welcome, $name!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const PaymentPage()),
                        ),
                        child: const Text('Go to Payment'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 32,
            child: Center(
              child: TextButton(
                onPressed: () => _handleLogout(context),
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
