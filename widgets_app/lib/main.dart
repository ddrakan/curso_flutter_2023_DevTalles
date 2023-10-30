import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';


void main() {
  runApp(
      const ProviderScope(
      child: WidgetsApp() //Confg. Provider
      )
  );
}

class WidgetsApp extends ConsumerWidget {
  const WidgetsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkmodeProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: 'Flutter Widget',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
          selectedColor: selectedColor,
          isDarkmode: isDarkmode ).getTheme(),


      // home: const HomeScreen(),
      // routes: {
      //   '/buttons': (context) => const ButtonsScreen(),
      //   '/cards': (context) => const CardsScreen(),
      // },
    );
  }
}

