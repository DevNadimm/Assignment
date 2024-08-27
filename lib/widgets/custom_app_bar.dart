import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
  });

  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(horizontal: 30)
            : const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isMobile)
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HUMMING",
                  style: TextStyle(
                    fontSize: isMobile ? 17 : 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "BIRD.",
                  style: TextStyle(
                    fontSize: isMobile ? 17 : 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            if (!isMobile)
              Row(
                children: [
                  Text(
                    "Episodes",
                    style: TextStyle(
                      fontSize: isMobile ? 17 : 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                      fontSize: isMobile ? 17 : 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
