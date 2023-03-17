import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'auth/ui/login_page.dart';

// This is the router provider that will be used in the main.dart file
// to pass the router to the MaterialApp.router
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      //if page not found then it will show the page not found from here.
      errorBuilder: (context, state) => const Center(
            child: Text("Page Not Found"),
          ),
      routes: [
        //initializing the home page
        GoRoute(path: '/', builder: (context, state) => const LoginPage()),
        GoRoute(
            path: '/loginPage', builder: (context, state) => const LoginPage()),
      ]);
});
