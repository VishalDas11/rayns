import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/customAppbar.dart';
import '../api services/Color.dart';
import 'ScheduleWorkoutScreen.dart';

// ignore: must_be_immutable
class WeekOne extends StatelessWidget {
  WeekOne({super.key});
  String url =
      'https://images.pexels.com/photos/4753928/pexels-photo-4753928.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
          leadingicon: Icons.arrow_back,
          title: const Text("Guardians of the Grains "),
          column: Padding(
            padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Column(children: [
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
              customTile(),
            ]),
          )),
    );
  }

  Card customTile() {
    return Card(
      color: AppColor.tileColor,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
          // height: 90,
          width: 100,
        ),
        title: 'time Demo'.text.white.make(),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Day2'.text.white.make(),
            Row(
              children: [
                Icon(Icons.visibility, color: Vx.green600),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: "Select"
                      .text
                      .white
                      .size(11)
                      .make()
                      .centered()
                      .px(10)
                      .py(6),
                ).px(5).py(5)
              ],
            )
          ],
        ),
        onTap: () {
          Get.to(() => const ScheduleWorkOutScreen());
        },
      ),
    );
  }
}

// class Tile extends StatelessWidget {
//   const Tile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.to(WeeklyTraningScreen());
//       },
//       child: Container(
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height * 1 / 8,
//         decoration: BoxDecoration(
//           color: Color(0xFF454545),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(children: [
//           SizedBox(
//               width: MediaQuery.of(context).size.width * 1 / 2,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   "Guardians"
//                       .text
//                       .bold
//                       .color(Color(0xFFD1B000))
//                       .size(28)
//                       .make(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           "OF"
//                               .text
//                               .bold
//                               .color(Color(0xFFD1B000))
//                               .size(14)
//                               .make(),
//                           "THE"
//                               .text
//                               .color(Color(0xFFD1B000))
//                               .bold
//                               .size(14)
//                               .make()
//                         ],
//                       ),
//                       "Gains".text.bold.color(Color(0xFFD1B000)).size(28).make()
//                     ],
//                   )
//                 ],
//               )),
//           Icon(
//             Icons.visibility,
//             color: AppColor.greenColor,
//           ).pOnly(),
//           Icon(
//             Icons.download,
//             color: AppColor.whiteColor,
//           ).pOnly(left: 5),
//           Container(
//             width: 60,
//             height: 20,
//             decoration: BoxDecoration(
//                 color: AppColor.greenColor,
//                 borderRadius: BorderRadius.circular(30)),
//             child: "Select".text.white.size(11).make().centered(),
//           ).px(5).py(5)
//         ]).px(8),
//       ).px(10).py(5),
//     );
//   }
// }
