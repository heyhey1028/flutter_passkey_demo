import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'top_page.dart';
import 'payment_page.dart';
import 'completed_page.dart';

void main() {
  runApp(const MainApp());
}

final _router = GoRouter(
  routes: [
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
