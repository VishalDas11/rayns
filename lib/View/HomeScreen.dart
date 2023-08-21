import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Common/home_page/CardRow1.dart';
import '../Common/home_page/tab1.dart';
import '../Common/home_page/tab2.dart';
import '../Common/home_page/tab3.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF031A28),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Color(0xFF031A28),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              expandedHeight: 160,
              leading: const Icon(
                Icons.menu,
                color: Colors.red,
                size: 30,
              ),
              flexibleSpace: const FlexibleSpaceBar(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello Sarahas",
                    ),
                    Text(
                      "Good Morning",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )
                  ],
                ),
                centerTitle: true,
              ),
              actions: [
                const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ).pOnly(right: 5),
                const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?s=1024x1024&w=is&k=20&c=v0FzN5RD19wlMvrkpUE6QKHaFTt5rlDSqoUV1vrFbN4='),
                    )).pOnly(right: 15, left: 5).onTap(() {
                  // Get.to(const ProfileScreen());
                }),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(children: [
                ListTile(
                  leading: "Today Workout Plan"
                      .text
                      .color(Colors.white)
                      .size(18)
                      .make(),
                  trailing: "Mon 25 Apr".text.color(Colors.white).make(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // TODO   Box Images
                    children: [
                      BoxImage(
                        image:
                            'https://img.freepik.com/free-photo/caucasian-young-sporty-couple-workout-gym-together_155003-40305.jpg?w=740&t=st=1686759419~exp=1686760019~hmac=a1cc22d2f462cdae4a4b059904d4705e1df0fe5300d3bea8b43682d3d355037a',
                      ),
                      BoxImage(
                        image:
                            'https://img.freepik.com/free-photo/caucasian-young-sporty-couple-workout-gym-together_155003-40305.jpg?w=740&t=st=1686759419~exp=1686760019~hmac=a1cc22d2f462cdae4a4b059904d4705e1df0fe5300d3bea8b43682d3d355037a',
                      ),
                      BoxImage(
                        image:
                            'https://img.freepik.com/free-photo/caucasian-young-sporty-couple-workout-gym-together_155003-40305.jpg?w=740&t=st=1686759419~exp=1686760019~hmac=a1cc22d2f462cdae4a4b059904d4705e1df0fe5300d3bea8b43682d3d355037a',
                      ),
                      BoxImage(
                        image:
                            'https://img.freepik.com/free-photo/caucasian-young-sporty-couple-workout-gym-together_155003-40305.jpg?w=740&t=st=1686759419~exp=1686760019~hmac=a1cc22d2f462cdae4a4b059904d4705e1df0fe5300d3bea8b43682d3d355037a',
                      )
                    ],
                  ).pOnly(bottom: 10),
                ),
                //todo ListTile
                tile(context),
                //  TabBar
                Container(
                  height: 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(30)),
                  child: TabBar(
                      labelStyle: const TextStyle(fontSize: 12),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red),
                      tabs: const [
                        Tab(
                          text: "Biggener",
                        ),
                        Tab(
                          text: "Intermediate",
                        ),
                        Tab(
                          text: "Advance",
                        )
                      ]),
                ).pOnly(bottom: 5),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 3.5,
                    width: double.infinity,
                    child:
                        const TabBarView(children: [Tab1(), Tab2(), Tab3()])),
              ]).px(20),
            ),
            // CustomTabbar()
          ],
        ),
        // bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

// TODO   ListTile
Widget tile(BuildContext context) {
  return ListTile(
    leading: "Workout Categeries".text.size(18).color(Colors.white).make(),
    trailing: "See All".text.color(Colors.white).make(),
    contentPadding: EdgeInsets.symmetric(horizontal: 0),
  );
}
