import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:raynworkout/View/ScheduleWorkoutScreen.dart';
import 'package:raynworkout/View/profileScreen.dart';
import '../../View/HomeScreen.dart';
import '../../api services/Color.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      const HomeScreen(),
      const Text("Trainer List"),
      const HomeScreen(),
      ScheduleWorkOutScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.dashboard),
        title: "Dashboard",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white30,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.list,
          ),
          title: "Trainer List",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.add,
            color: Colors.black,
            size: 35,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white60),
      PersistentBottomNavBarItem(
          title: "Schedule",
          icon: const Icon(Icons.schedule_rounded),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
          title: "Profile",
          icon: const Icon(Icons.person_rounded),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controller,
      navBarHeight: 70,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      navBarStyle: NavBarStyle.style15,
      popAllScreensOnTapOfSelectedTab: true,
      backgroundColor: AppColor.navbarColor,
      // onItemSelected: onItemTap,
    );
  }
}
