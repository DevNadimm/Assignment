import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body(
      {super.key,
      required this.isMobile,
      required this.isTablet,
      required this.isDesktop});

  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMobile
          ? const EdgeInsets.symmetric(horizontal: 30)
          : const EdgeInsets.symmetric(horizontal: 150),
      child: !isDesktop
          ? Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        textAlign: TextAlign.center,
                        "FLUTTER WEB.\nTHE BASICS",
                        style: TextStyle(
                            height: 1,
                            fontSize: isMobile ? 50 : 100,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: isMobile ? 14 : 22,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                SizedBox(
                  width: isMobile ? double.infinity : 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Join course",
                        style: TextStyle(fontSize: isMobile ? 16 : 22),
                      ),
                    ),
                  ),
                )
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        "FLUTTER WEB.\nTHE BASICS",
                        style: TextStyle(
                            height: 1,
                            fontSize: isMobile ? 50 : 80,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: isMobile ? 14 : 22,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: isMobile ? double.infinity : 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Join course",
                          style: TextStyle(fontSize: isMobile ? 16 : 22),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
