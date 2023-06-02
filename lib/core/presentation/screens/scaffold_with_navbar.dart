import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavbar(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: navigationShell,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: 'Tracking'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Aligners'),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
