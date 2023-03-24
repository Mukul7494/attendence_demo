import 'package:attendence_system/auth/ui/login_with_phone/phone_login_page.dart';
import 'package:attendence_system/auth/ui/login_with_phone/phone_verification_page.dart';
import 'package:attendence_system/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'auth/firebase/auth_services.dart';
import 'auth/ui/login_signup_with_email/login_page.dart';

// This is the router provider that will be used in the main.dart file
// to pass the router to the MaterialApp.router
final routerProvider = Provider<GoRouter>((ref) {
  final FirebaseAuthServices auth = FirebaseAuthServices();

  final user = auth.getUser();

  return GoRouter(
      //temporary solution for checking if user is logged in or not and where to send him
      initialLocation: user != null ? '/home' : '/loginPage',
      //if page not found then it will show the page not found from here.
      errorBuilder: (context, state) => const Center(
            child: Scaffold(body: Text("Page Not Found")),
          ),
      routes: [
        //initializing the home page
        // GoRoute(path: '/', builder: (context, state) => const LoginPage()),
        GoRoute(path: "/home", builder: (context, state) => HomePage()),
        GoRoute(
            path: '/loginPage', builder: (context, state) => const LoginPage()),
        GoRoute(
            path: '/phoneloginPage',
            builder: (context, state) => const PhoneLoginPage()),
        GoRoute(
            path: '/phoneVerificationPage',
            builder: (context, state) => PhoneVerificationPage(
                  phoneVerificationId:
                      state.queryParams['phoneVerificationId']!,
                )),
      ]);
});
