import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:raynworkout/View/ScheduleWorkoutScreen.dart';
import 'package:raynworkout/View/profileScreen.dart';
import '../../View/HomeScreen.dart';
import '../../api services/Color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
          ),
          activeColorPrimary: Colors.grey,
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
// import 'package:flutter/material.dart';
// import 'package:rw/View/HomeScreen.dart';
// import 'package:rw/View/ScheduleWorkoutScreen.dart';
// import 'package:rw/api%20services/Color.dart';

// import '../../View/profileScreen.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({Key? key}) : super(key: key);

//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int pageIndex = 0;

//   final pages = [
//     HomeScreen(),
//     Text("Trainig"),
//     ScheduleWorkOutScreen(),
//     ProfileScreen()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.navbarColor,
      
//       body: pages[pageIndex],
//       bottomNavigationBar: Container(
        
//         height: 60,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               enableFeedback: false,
//               onPressed: () {
//                 setState(() {
//                   pageIndex = 0;
//                 });
//               },
//               icon: pageIndex == 0
//                   ? const Icon(
//                       Icons.dashboard,
//                       color: Colors.white,
//                     )
//                   : const Icon(
//                       Icons.dashboard,
//                       color: Colors.white,
//                     ),
//             ),
//             IconButton(
//               enableFeedback: false,
//               onPressed: () {
//                 setState(() {
//                   pageIndex = 1;
//                 });
//               },
//               icon: pageIndex == 1
//                   ? const Icon(
//                       Icons.model_training,
//                       color: Colors.white,
//                     )
//                   : const Icon(
//                       Icons.model_training,
//                       color: Colors.white,
//                     ),
//             ),
//             IconButton(
//               enableFeedback: false,
//               onPressed: () {
//                 setState(() {
//                   pageIndex = 2;
//                 });
//               },
//               icon: pageIndex == 2
//                   ? const Icon(
//                       Icons.schedule_outlined,
//                       color: Colors.white,
//                     )
//                   : const Icon(
//                       Icons.schedule_outlined,
//                       color: Colors.white,
//                     ),
//             ),
//             IconButton(
//               enableFeedback: false,
//               onPressed: () {
//                 setState(() {
//                   pageIndex = 3;
//                 });
//               },
//               icon: pageIndex == 3
//                   ? const Icon(
//                       Icons.person_rounded,
//                       color: Colors.white,
//                     )
//                   : const Icon(
//                       Icons.person_outline,
//                       color: Colors.white,
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
