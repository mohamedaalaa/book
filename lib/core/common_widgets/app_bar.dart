// // ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:book/core/common_widgets/app_button.dart';
// import 'package:book/core/constants/get_padding.dart';
// import 'package:book/core/constants/get_size.dart';
// import 'package:book/core/constants/get_text.dart';
// import 'package:book/core/constants/sizes.dart';
// import 'package:book/core/utils/app_strings.dart';
// import 'package:book/core/utils/assets_manager.dart';
// import 'package:book/core/utils/translation_manager.dart';

// import 'package:book/features/locale/presentation/cubit/locale_cubit.dart';

// import '../../config/routes/app_routes.dart';
// import '../utils/app_colors.dart';
// import 'complaints_widget.dart';
// import 'logo_widget.dart';

// class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final void Function()? onTap;
//   const AppBar1({super.key, this.title, this.onTap});

//   @override
//   Size get preferredSize => const Size(200, kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Stack(children: [
//         Container(
//           // elevation: 0,
//           // title: title != null ? TextBold48(text: title!) : null,
//           margin: EdgeInsets.only(right: getPadding(context)),
//           padding: EdgeInsets.only(top: getPadding(context) * 2),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: onTap ?? () => Navigator.of(context).pop(),

//                 // () => onTap!=null? onTap: Navigator.of(context).pop(),
//                 child: Container(
//                   height: getSize(context, 100),
//                   padding: EdgeInsets.all(getPadding(context)),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(16)),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Icon(
//                           Icons.arrow_back_ios,
//                           color: AppColors.blueColor,
//                         ),
//                         TextBold32(
//                           text: context.translate("back"),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               const ComplaintsWidget()
//             ],
//           ),
//           // actions: [
//           //   ComplaintsWidget()
//           // ],
//           // leadingWidth: 200,
//         ),
//         Align(
//           alignment: Alignment.center,
//           child: title != null
//               ? TextBold48(
//                   text: title!,
//                   color: AppColors.black,
//                 )
//               : null,
//         )
//       ]),
//     );
//   }
// }

// class CancelAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final Function()? onTap;
//   const CancelAppBar({super.key, required this.onTap});

//   @override
//   Size get preferredSize => const Size(200, kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       leading: GestureDetector(
//         onTap: onTap,
//         child: Padding(
//           padding: const EdgeInsets.only(right: 16),
//           child: Container(
//             // width: getSize(context, 439),
//             // height: getSize(context, 63),
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(getSize(context, 20))),
//             padding: EdgeInsets.all(getPadding(context)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.close,
//                   size: 32,
//                   color: AppColors.red,
//                 ),
//                 TextBold32(
//                   text: context.translate("cancel"),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       leadingWidth: 150,
//     );
//   }
// }

// class CloseAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CloseAppBar({super.key});

//   @override
//   Size get preferredSize => const Size(63, 63);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       leading: GestureDetector(
//         onTap: () {
//           Navigator.of(context).pushReplacementNamed(
//             Routes.menuService,
//           );
//         },
//         child: Container(
//           // height: 63,
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(30)),
//           padding: const EdgeInsets.all(5),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(
//                 Icons.arrow_back_ios,
//                 color: AppColors.blueColor,
//               ),
//               TextBold32(
//                 text: context.translate("close"),
//               )
//             ],
//           ),
//         ),
//       ),
//       actions: const [ComplaintsWidget()],
//       leadingWidth: getSize(context, 176),
//     );
//   }
// }

// class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final GestureTapCallback? onTap;
//   final bool? withLogo;
//   final bool? isBack;
//   final Widget? title;
//   final String? name;
//   const DefaultAppBar(
//       {super.key,
//       this.onTap,
//       this.withLogo,
//       this.isBack,
//       this.title,
//       this.name});

//   @override
//   Size get preferredSize => const Size(200, 150);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // margin: EdgeInsets.only(right: getPadding(context)),
//       padding: EdgeInsets.all(getPadding(context) * 2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           //   Container(
//           //     margin: EdgeInsets.symmetric(
//           //         horizontal: getPadding(context)),
//           //     width: getSize(context, 234),
//           //     height: getSize(context, 106),
//           //     decoration: BoxDecoration(
//           //         border: Border.all(color: AppColors.primary),
//           //         borderRadius:
//           //             BorderRadius.circular(getSize(context, 10))),
//           //     child: Center(
//           //       child: Row(
//           //         mainAxisAlignment: MainAxisAlignment.center,
//           //         children: [
//           //           Icon(Icons.arrow_back_ios,
//           //               color: AppColors.blueColor,
//           //               size: getSize(context, 44)),
//           //           TextBold32(
//           //             text:
//           //                 context.translate(name ?? AppStrings.back),
//           //           )
//           //         ],
//           //       ),
//           //     ),
//           //   ),
//           // )

//           Image.asset(
//             ImageAssets.gascoLogo,
//             // width: getSize(context, 234),
//             // height: getSize(context, 123),
//           ),
//           // (isBack ?? true)
//           //     ?
//           GestureDetector(
//               onTap: onTap ??
//                   () => Navigator.pushNamedAndRemoveUntil(
//                         context,
//                         Routes.initialRoute,
//                         (route) => false,
//                       ),
//               child: Image.asset(
//                 ImageAssets.home,
//                 // width: getSize(context, 36),
//                 // height: getSize(context, 29),
//               ))
//           // : const SizedBox(),
//           // ComplaintsWidget(),
//         ],
//       ),
//     );
//   }
// }

// class SplashAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const SplashAppBar({
//     super.key,
//   });

//   @override
//   Size get preferredSize => const Size(200, 150);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(getPadding(context) * 2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             ImageAssets.splashLogo,
//             width: getSize(context, 242),
//             height: getSize(context, 91),
//           ),
//           AppButton(
//               height: 80,
//               text: context.translate(AppStrings.employeeGate),
//               width: 250,
//               fontWeight: FontWeight.normal,
//               fontSize: 15,
//               onTap: () => Navigator.of(context).pushNamed(Routes.loginScreen),
//               color: AppColors.white,
//               textColor: AppColors.black)
//         ],
//       ),
//     );
//   }
// }

// class EmployeeHomeAppBar extends StatelessWidget {
//   final Widget leading;
//   final Widget actions;
//   final bool isLogo;
//   final GestureTapCallback? onTap;
//   const EmployeeHomeAppBar({
//     super.key,
//     this.onTap,
//     required this.leading,
//     required this.actions,
//     this.isLogo = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: getPadding(context)),
//       padding: EdgeInsets.all(getPadding(context)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [leading, if (isLogo) const LogoWidget(), actions],
//       ),
//     );
//   }
// }

// class HomeAppBar extends StatelessWidget {
//   const HomeAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           // height: getSize(context, 450),
//           margin: EdgeInsets.only(top: getPadding(context)),
//           padding: EdgeInsets.all(getPadding(context)),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, Routes.loginScreen);
//                     },
//                     child: Container(
//                       height: getSize(context, 100),
//                       width: getSize(context, 500),
//                       padding: EdgeInsets.all(getPadding(context)),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 2),
//                           borderRadius:
//                               BorderRadius.circular(getSize(context, 30))),
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               ImageAssets.person,
//                               width: getSize(context, 42),
//                               height: getSize(context, 42),
//                             ),
//                             const GapWidth(width: 10),
//                             TextBold32(
//                                 text:
//                                     context.translate(AppStrings.employeeGate))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   const GapHeight(height: 30),
//                   GestureDetector(
//                     // onTap: () {
//                     //   switch (BlocProvider.of<LocaleCubit>(context)
//                     //       .getCurrentLang) {
//                     //     case AppStrings.arabicCode:
//                     //       {
//                     //         BlocProvider.of<LocaleCubit>(context).toEnglish();
//                     //         break;
//                     //       }
//                     //     default:
//                     //       {
//                     //         BlocProvider.of<LocaleCubit>(context).toArabic();
//                     //         break;
//                     //       }
//                     //   }
//                     //   Navigator.pushNamedAndRemoveUntil(
//                     //       context, Routes.initialRoute, (route) => false);
//                     // },
//                     child: Container(
//                       height: getSize(context, 100),
//                       width: getSize(context, 500),
//                       padding: EdgeInsets.all(getPadding(context)),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 2),
//                           borderRadius:
//                               BorderRadius.circular(getSize(context, 30))),
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.language,
//                               size: getSize(context, 42),
//                               color: AppColors.primary,
//                             ),
//                             const GapWidth(width: 10),
//                             TextBold32(
//                                 text: context.translate(AppStrings.chngLang))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const ComplaintsWidget(),
//                   const GapHeight(height: 30),
//                   GestureDetector(
//                     onTap: () => Navigator.of(context).pushNamed(
//                       Routes.posPhone,
//                     ),
//                     child: Container(
//                       height: getSize(context, 100),
//                       width: getSize(context, 500),
//                       padding: EdgeInsets.all(getPadding(context)),
//                       margin: const EdgeInsets.symmetric(horizontal: 30),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 2),
//                           borderRadius:
//                               BorderRadius.circular(getSize(context, 30))),
//                       child: Center(
//                         child: TextBold32(
//                           text: context.translate(AppStrings.userRequests),
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: getSize(context, 12)),
//           child: const Center(child: LogoWidget()),
//         ),
//       ],
//     );
//   }
// }

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             GestureDetector(
//               // onTap: () {
//               //   BlocProvider.of<LoginCubit>(context).reset();
//               //   Navigator.of(context).pushNamedAndRemoveUntil(
//               //       Routes.initialRoute, (route) => false);
//               // },
//               child: Container(
//                 width: getSize(context, 500),
//                 height: getSize(context, 150),
//                 margin: EdgeInsets.only(top: getPadding(context)),
//                 padding: EdgeInsets.all(getPadding(context)),
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 2),
//                     borderRadius: BorderRadius.circular(getSize(context, 30))),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.home,
//                       color: AppColors.blueColor,
//                       size: getSize(context, 36),
//                     ),
//                     const GapWidth(width: 10),
//                     TextBold32(
//                       text: context.translate(AppStrings.mainMenu),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             const ComplaintsWidget()
//           ],
//         ),
//         const Align(
//           alignment: Alignment.center,
//           child: LogoWidget(),
//         )
//       ],
//     );
//   }
// }

// class NationalDayAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final GestureTapCallback? onTap;

//   const NationalDayAppBar({
//     super.key,
//     this.onTap,
//   });

//   @override
//   Size get preferredSize => const Size(200, 150);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Stack(children: [
//         Container(
//           margin: EdgeInsets.only(right: getPadding(context)),
//           padding: EdgeInsets.all(getPadding(context) * 2),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   // switch (
//                   //     BlocProvider.of<LocaleCubit>(context).getCurrentLang) {
//                   //   case AppStrings.arabicCode:
//                   //     {
//                   //       BlocProvider.of<LocaleCubit>(context).toEnglish();
//                   //       break;
//                   //     }
//                   //   default:
//                   //     {
//                   //       BlocProvider.of<LocaleCubit>(context).toArabic();
//                   //       break;
//                   //     }
//                   // }
//                   Navigator.pushNamedAndRemoveUntil(
//                       context, Routes.initialRoute, (route) => false);
//                 },
//                 child: Container(
//                   height: getSize(context, 100),
//                   width: getSize(context, 500),
//                   padding: EdgeInsets.all(getPadding(context)),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey, width: 2),
//                       borderRadius:
//                           BorderRadius.circular(getSize(context, 30))),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.language,
//                           size: getSize(context, 42),
//                           color: AppColors.primary,
//                         ),
//                         const GapWidth(width: 10),
//                         TextBold32(text: context.translate(AppStrings.chngLang))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               // (isBack ?? true)
//               //     ? GestureDetector(
//               //         onTap: onTap ?? () => Navigator.pop(context),
//               //         child: Container(
//               //           margin: EdgeInsets.symmetric(
//               //               horizontal: getPadding(context)),
//               //           width: getSize(context, 300),
//               //           height: getSize(context, 150),
//               //           decoration: BoxDecoration(
//               //               border: Border.all(color: AppColors.grey),
//               //               borderRadius: BorderRadius.circular(16)),
//               //           child: Center(
//               //             child: Row(
//               //               mainAxisAlignment: MainAxisAlignment.center,
//               //               children: [
//               //                 Icon(Icons.arrow_back_ios,
//               //                     color: AppColors.blueColor,
//               //                     size: getSize(context, 44)),
//               //                 TextBold32(
//               //                   text:
//               //                       context.translate(name ?? AppStrings.back),
//               //                 )
//               //               ],
//               //             ),
//               //           ),
//               //         ),
//               //       )
//               //     : const SizedBox(),
//               // const ComplaintsWidget(),
//               Image.asset(ImageAssets.logo1)
//             ],
//           ),
//         ),
//         Align(
//           alignment: Alignment.center,
//           child: Padding(
//             padding: EdgeInsets.only(top: getSize(context, 12)),
//             child: const LogoWidget(),
//           ),
//         )
//         // : const SizedBox(),
//       ]),
//     );
//   }
// }

// class OperatorAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const OperatorAppBar({super.key});

//   @override
//   Size get preferredSize => const Size(63, 120);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.red,
//       // margin: EdgeInsets.only(
//       //     right: getPadding(context), left: getPadding(context)),
//       padding: EdgeInsets.all(
//         getPadding(context),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     ImageAssets.wave,
//                     width: getSize(context, 20),
//                     height: getSize(context, 20),
//                   ),
//                   const GapWidth(width: 5),
//                   // TextNormal20(
//                   //   text:
//                   //       "${context.translate(AppStrings.welcome1)} ${BlocProvider.of<LoginCubit>(context).getUser?.userName}",
//                   //   color: AppColors.white,
//                   // )
//                 ],
//               ),
//               InkWell(
//                 onTap: () => Navigator.of(context).pushNamed(Routes.chooseSide),
//                 child: Container(
//                   padding: EdgeInsets.all(getSize(context, 5)),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: AppColors.white),
//                       borderRadius:
//                           BorderRadius.circular(getSize(context, 15))),
//                   child: TextNormal18(
//                     text: context.translate(AppStrings.show),
//                     color: AppColors.white,
//                   ),
//                 ),
//               ),
//               // AppButton(
//               //   onTap: () {
//               //     Navigator.of(context).pushNamed(
//               //       Routes.chooseSide,
//               //       // replace with Routes.requestDetails
//               //     );
//               //   },
//               //   height: 50,
//               //   text: context.translate(AppStrings.show),
//               //   width: 150,
//               //   fontWeight: FontWeight.normal,
//               //   fontSize: 20,
//               //   color: AppColors.white,
//               //   textColor: AppColors.blueColor,
//               // )
//             ],
//           ),
//           GestureDetector(
//             onTap: () =>
//                 Navigator.of(context).pushReplacementNamed(Routes.initialRoute),
//             child: Container(
//               // width: getSize(context, 200),
//               // height: getSize(context, 100),
//               // margin: EdgeInsets.only(top: getPadding(context)),
//               padding: EdgeInsets.all(getPadding(context)),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey, width: 2),
//                   borderRadius: BorderRadius.circular(getSize(context, 30))),
//               child: Row(
//                 spacing: getSize(context, 5),
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.home,
//                     color: AppColors.white,
//                     size: getSize(context, 20),
//                   ),
//                   TextNormal20(
//                     text: context.translate(AppStrings.mainMenu),
//                     color: AppColors.white,
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class OperatorAppBar1 extends StatelessWidget {
//   const OperatorAppBar1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Stack(children: [
//       Container(
//         margin: EdgeInsets.only(top: getPadding(context)),
//         padding: EdgeInsets.all(getPadding(context)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: Container(
//                 width: getSize(context, 300),
//                 height: getSize(context, 150),
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(16)),
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.arrow_back_ios,
//                         color: AppColors.blueColor,
//                       ),
//                       TextBold32(
//                         text: context.translate(AppStrings.back),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 AppButton(
//                   onTap: () {
//                     Navigator.of(context).pushNamed(
//                       Routes.chooseSide,
//                       // replace with Routes.requestDetails
//                     );
//                   },
//                   height: 130,
//                   text: context.translate(AppStrings.show),
//                   width: 400,
//                   color: AppColors.blueColor,
//                   textColor: AppColors.white,
//                 ),
//                 const GapHeight(height: 20),
//                 const ComplaintsWidget()
//               ],
//             )
//           ],
//         ),
//       ),
//       const Align(
//         alignment: Alignment.center,
//         child: LogoWidget(),
//       )
//     ]));
//   }
// }

// class SplashScreenAppBar extends StatefulWidget {
//   final GestureTapCallback? onTap;
//   final bool? withLogo;
//   final bool? isBack;
//   final Widget? title;
//   final String? name;
//   const SplashScreenAppBar(
//       {super.key,
//       this.onTap,
//       this.withLogo,
//       this.isBack,
//       this.title,
//       this.name});

//   @override
//   State<SplashScreenAppBar> createState() => _SplashScreenAppBarState();
// }

// class _SplashScreenAppBarState extends State<SplashScreenAppBar> {
//   ExpansionTileController controller = ExpansionTileController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Stack(children: [
//         Container(
//           margin: EdgeInsets.only(right: getPadding(context)),
//           padding: EdgeInsets.all(getPadding(context) * 2),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               BlocBuilder<SplashCubit, SplashState>(
//                 builder: (context, state) {
//                   return Column(
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(getPadding(context)),
//                             decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.circular(getSize(context, 10)),
//                                 border: Border.all(color: AppColors.primary)),
//                             child: SizedBox(
//                               width: getSize(context, 550),
//                               child: ExpansionTile(
//                                 controller: controller,
//                                 leading: BlocBuilder<SplashCubit, SplashState>(
//                                   builder: (context, state) {
//                                     switch (state.type) {
//                                       case Types.employeeGate:
//                                         return Image.asset(
//                                             ImageAssets.employee);

//                                       case Types.home:
//                                         return const Icon(Icons.home_outlined);
//                                       case Types.userRequest:
//                                         return Image.asset(ImageAssets.user);
//                                     }
//                                   },
//                                 ),
//                                 onExpansionChanged: (value) {},
//                                 iconColor: AppColors.primary,
//                                 title: BlocBuilder<SplashCubit, SplashState>(
//                                   builder: (context, state) {
//                                     switch (state.type) {
//                                       case Types.employeeGate:
//                                         return TextBold36(
//                                           text: context.translate(
//                                               AppStrings.employeeGate),
//                                           color: AppColors.primary,
//                                         );

//                                       case Types.userRequest:
//                                         return TextBold36(
//                                           text: context.translate(
//                                               AppStrings.userRequests),
//                                           color: AppColors.primary,
//                                         );
//                                       case Types.home:
//                                         return TextBold36(
//                                           text: context
//                                               .translate(AppStrings.homeScreen),
//                                           color: AppColors.primary,
//                                         );
//                                     }
//                                   },
//                                 ),
//                                 children: [
//                                   const GapHeight(height: 10),
//                                   InkWell(
//                                     onTap: () {
//                                       BlocProvider.of<SplashCubit>(context)
//                                           .changeType(Types.employeeGate);
//                                       controller.collapse();
//                                     },
//                                     child: Padding(
//                                       padding:
//                                           EdgeInsets.all(getPadding(context)),
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Image.asset(ImageAssets.employee),
//                                               const GapWidth(width: 10),
//                                               TextBold36(
//                                                 text: context.translate(
//                                                     AppStrings.employeeGate),
//                                                 color: AppColors.primary,
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox()
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   // const GapHeight(height: 10),
//                                   InkWell(
//                                     onTap: () {
//                                       BlocProvider.of<SplashCubit>(context)
//                                           .changeType(Types.userRequest);
//                                       controller.collapse();
//                                     },
//                                     child: Padding(
//                                       padding:
//                                           EdgeInsets.all(getPadding(context)),
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Image.asset(ImageAssets.user),
//                                               const GapWidth(width: 10),
//                                               TextBold36(
//                                                 text: context.translate(
//                                                     AppStrings.userRequests),
//                                                 color: AppColors.primary,
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox()
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: () {
//                                       BlocProvider.of<SplashCubit>(context)
//                                           .changeType(Types.home);
//                                       controller.collapse();
//                                     },
//                                     child: Padding(
//                                       padding:
//                                           EdgeInsets.all(getPadding(context)),
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.home_outlined,
//                                                 size: getSize(context, 100),
//                                                 color: AppColors.primary,
//                                               ),
//                                               const GapWidth(width: 10),
//                                               TextBold36(
//                                                 text: context.translate(
//                                                     AppStrings.homeScreen),
//                                                 color: AppColors.primary,
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox()
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // if (BlocProvider.of<SplashCubit>(context)
//                       //     .state
//                       //     .isExpanded!) ...{
//                       //   const GapHeight(height: 20),
//                       //   Container(
//                       //     width: getSize(context, 400),
//                       //     padding: EdgeInsets.all(getPadding(context)),
//                       //     decoration: BoxDecoration(
//                       //         borderRadius:
//                       //             BorderRadius.circular(getSize(context, 10)),
//                       //         border: Border.all(color: AppColors.primary)),
//                       //     child: Column(
//                       //       children: [],
//                       //     ),
//                       //   )
//                       // }
//                     ],
//                   );
//                 },
//               ),
//               const LogoWidget(
//                   // width: 230,
//                   // height: 170,
//                   ),
//               const ComplaintsWidget()
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }
