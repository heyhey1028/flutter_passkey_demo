import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'top_page.dart';
import 'payment_page.dart';
import 'completed_page.dart';
import 'signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

final _router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    // 現在のユーザー認証状態を取得
    final user = FirebaseAuth.instance.currentUser;

    // ログインページにいる場合は、ログイン済みならホームへリダイレクト
    if (state.matchedLocation == '/signup' && user != null) {
      return '/';
    }

    // ログインページ以外にいる場合は、未ログインならログインページへリダイレクト
    if (state.matchedLocation != '/signup' && user == null) {
      return '/signup';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        final noAnimation = (state.extra as Map<String, bool>?)?['noAnimation'] ?? false;
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const TopPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            if (noAnimation) return child;
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: noAnimation ? Duration.zero : const Duration(milliseconds: 300),
        );
      },
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentPage(),
    ),
    GoRoute(
      path: '/completed',
      builder: (context, state) => const CompletedPage(),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Passkey Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
