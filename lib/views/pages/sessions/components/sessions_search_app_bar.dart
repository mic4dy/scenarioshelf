import 'package:flutter/material.dart';

class SessionsSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SessionsSearchAppBar({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 48);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 28,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
