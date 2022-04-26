import 'package:flutter/material.dart';
import 'package:myapp/styles/appstyles.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/main_top.png',
                height: size.width / 4,
                width: size.width / 4,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
