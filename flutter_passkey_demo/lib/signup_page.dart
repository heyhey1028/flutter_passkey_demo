import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_passkey_demo/top_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _nameController = TextEditingController();
  bool _isLoading = false;

  Future<void> _signup() async {
    if (_nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your name')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      // Execute anonymous authentication
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      final user = userCredential.user;

      if (user != null) {
        // Save user information to Firestore
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'name': _nameController.text,
          'createdAt': FieldValue.serverTimestamp(),
        });

        if (mounted) {
          // Handle successful registration (e.g., navigate to home screen)
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const TopPage()),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration failed')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _signup,
                child: _isLoading ? const CircularProgressIndicator() : const Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
