import 'package:flutter/material.dart';

void main() => runApp(const MyMessageBubble());

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              "Officia commodo aute mollit nulla dolor.",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
