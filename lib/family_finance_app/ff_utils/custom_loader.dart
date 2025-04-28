import 'package:flutter/material.dart';

class CustomLoaderWidget extends StatelessWidget {
  final String message;
  const CustomLoaderWidget({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // Takes full available space
      child: Container(
        color: Colors.black54, // Optional overlay background
        child: Center(
          // Ensures content is centered
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keeps it compact
            children: [
              const CircularProgressIndicator(backgroundColor: Colors.red),
              const SizedBox(height: 10.0),
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
