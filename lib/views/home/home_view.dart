import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('HOME VIEW'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              print('navigate to sub home');
              context.goNamed('subHome');
            },
            child: const Text("Navigate to HOME CHILD OF HOME VIEW"),
          ),
        ],
      ),
    );
  }
}
