// import 'package:booking/core/utils/app_colors.dart';
// import 'package:booking/core/utils/app_values.dart';
// import 'package:booking/core/utils/font_styles.dart';
// import 'package:booking/features/booking/cubit/booking_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class TabBarHead extends StatelessWidget {
//   final BookingCubit cubit;
//   const TabBarHead({super.key, required this.cubit});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(AppSize.s30),
//         border: Border.all(color: Theme.of(context).hintColor),
//         color: Theme.of(context).hintColor,
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: AppHeight.h5, horizontal: AppWidth.w10),
//         child: TabBar(
//           controller: controller,
//           labelColor: AppColors.teal,
//           unselectedLabelColor: AppColors.grey,
//           unselectedLabelStyle: getMediumStyle(
//             fontColor: AppColors.grey,
//             fontSize: AppSize.s14,
//           ),
//           indicatorColor: Colors.transparent,
//           labelStyle: getBoldStyle(
//             fontSize: AppSize.s15,
//             fontColor: Theme.of(context).textTheme.bodyLarge!.color!,
//           ),
//           isScrollable: true,
//           onTap: (index) {
//             // cubit.changeTabBar(index);
//             // cubit.createBooking();
//           },
//           tabs: cubit.bookings
//               .map((element) => Tab(
//                     text: element.title,
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }
