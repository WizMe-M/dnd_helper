import 'package:dnd_helper/internal/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}
