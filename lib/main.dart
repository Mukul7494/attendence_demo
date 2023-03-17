import 'package:attendence_system/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app.dart';

void main() {
  // RIVERPOD INITILIZED
  // ENTRY POINT OF OUR APP
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
