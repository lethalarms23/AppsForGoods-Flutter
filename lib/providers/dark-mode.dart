import 'package:flutter_riverpod/flutter_riverpod.dart';

enum darkMode {  isDark, isNotDark }

final darkModeState = StateProvider<darkMode>((_) => darkMode.isNotDark);
