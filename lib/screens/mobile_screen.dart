import 'package:assignment/widgets/body.dart';
import 'package:assignment/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SKILL UP NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Best Skill',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.live_tv),
              title: Text("Episodes"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(isMobile: true, isTablet: false, isDesktop: false),
            Expanded(child: Body(isMobile: true, isTablet: false, isDesktop: false)),
          ],
        ),
      ),
    );
  }
}
