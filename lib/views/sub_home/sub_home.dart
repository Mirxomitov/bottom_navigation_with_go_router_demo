import 'package:flutter/material.dart';

class SubHomeView extends StatelessWidget {
  const SubHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('SUB HOME VIEW'),
          /*const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Navigate to HOME CHILD OF HOME VIEW"),
          ),*/
        ],
      ),
    );
  }
}
