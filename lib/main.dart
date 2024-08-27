import 'package:assignment/responsive_builder.dart';
import 'package:assignment/screens/desktop_screen.dart';
import 'package:assignment/screens/mobile_screen.dart';
import 'package:assignment/screens/tablet_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ResponsiveBuilder(
        mobile: MobileScreen(),
        tablet: TabletScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
