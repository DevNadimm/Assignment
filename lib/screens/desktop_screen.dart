import 'package:assignment/widgets/body.dart';
import 'package:assignment/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(isMobile: false, isTablet: false, isDesktop: true),
            Expanded(
                child: Body(isMobile: false, isTablet: false, isDesktop: true)),
          ],
        ),
      ),
    );
  }
}