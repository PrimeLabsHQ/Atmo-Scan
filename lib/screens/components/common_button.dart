import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onpressed;
  final Widget child;
  const CommonButton({super.key, required this.onpressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300),

        onPressed: onpressed,
        child: child
      ),
    );
  }
}
