import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'payment_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  Future<void> _handleLogout(BuildContext context) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        // Delete user document from Firestore
        await FirebaseFirestore.instance.collection('users').doc(user.uid).delete();
        // Delete user from Firebase Authentication
        await user.delete();
        // Sign out
        await FirebaseAuth.instance.signOut();
      }

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Logged out and account deleted successfully')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to logout and delete account: ${e.toString()}')),
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
        actions: [
          TextButton(
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
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: screenHeight * 0.25), // Position at 1/4 of screen height
              if (user != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      FutureBuilder<DocumentSnapshot>(
                        future: FirebaseFirestore.instance.collection('users').doc(user.uid).get(),
                        builder: (context, snapshot) {
                          print('Snapshot data: ${snapshot.data}');
                          if (snapshot.hasData) {
                            print('User data: ${snapshot.data?.data()}');
                            final userData = snapshot.data!.data() as Map<String, dynamic>?;
                            final name = userData?['name'] as String? ?? 'User';
                            return Text(
                              '👋 Welcome, $name!',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            );
                          }
                          return const Text(
                            '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 24), // Increased spacing here
                      const Text(
                        'This demo app showcases passkey authentication for secure and passwordless login.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
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
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Implement passkey deletion
                        },
                        child: const Text('Delete Passkey'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
