import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Settings VIEW'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              context.goNamed('subSettings');
            },
            child: const Text("Navigate to Settings CHILD OF Settings VIEW"),
          ),
        ],
      ),
    );
  }
}
