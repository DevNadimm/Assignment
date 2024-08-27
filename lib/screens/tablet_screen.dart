import 'package:assignment/widgets/body.dart';
import 'package:assignment/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(isMobile: false, isTablet: true, isDesktop: false),
            Expanded(
                child: Body(isMobile: false, isTablet: true, isDesktop: false)),
          ],
        ),
      ),
    );
  }
}
