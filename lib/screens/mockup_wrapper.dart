import 'package:flutter/material.dart';

class MockupWrapper extends StatelessWidget {
  final Widget child;

  const MockupWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/mockup_phone.png',
              width: 400,
            ),
            Positioned(
              top: 100,
              width: 300,
              height: 600,
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAlias,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
