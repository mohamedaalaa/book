import 'package:book/config/routes/app_routes.dart';
import 'package:book/core/common_widgets/app_button.dart';
import 'package:book/core/common_widgets/error_screen.dart';
import 'package:book/core/common_widgets/toast_message.dart';
import 'package:book/core/constants/device_size.dart';
import 'package:book/core/constants/get_padding.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_manager.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/assets_manager.dart';
import 'package:book/core/utils/translation_manager.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/presentation/bloc/cubit/flight_cubit.dart';
import 'package:book/features/home_screen/presentation/widgets/home_app_bar.dart';
import 'package:book/features/locale/presentation/cubit/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int tripIndex;
  DateTime? departureDate;
  DateTime? returnDate;
  @override
  void initState() {
    super.initState();
    tripIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          BlocBuilder<FlightCubit, FlightState>(
            builder: (context, state) {
              if (state.isLoading) {
                return SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.isError) {
                return SliverFillRemaining(
                  child: Center(
                    child: ErrorScreen(
                      message: state.errorMsg,
                    ),
                  ),
                );
              } else if (state.isLoaded) {
                return SliverList(
                  delegate: SliverChildListDelegate([
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          ImageAssets.beauty,
                          width: context.width,
                          height: getSize(context, 148),
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: sl<LocaleCubit>().isArabic
                              ? getSize(context, 20)
                              : null,
                          right: !sl<LocaleCubit>().isArabic
                              ? getSize(context, 20)
                              : null,
                          child: TextBold18(
                            text: context.translate(AppStrings.startUrTrip),
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                            right: getSize(context, 20),
                            left: getSize(context, 20),
                            bottom: -getSize(context, 23),
                            child: Container(
                                width: getSize(context, 396),
                                height: getSize(context, 46),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(
                                        getSize(context, 15))),
                                child: Row(
                                    children: List.generate(
                                  3,
                                  (index) => Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          tripIndex = index;
                                        });
                                      },
                                      child: Container(
                                        // width: context.width / 4,
                                        height: getSize(context, 46),
                                        decoration: BoxDecoration(
                                          color: index == tripIndex
                                              ? AppColors.contColor1
                                              : Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withValues(
                                                  alpha:
                                                      0.5), // Shadow color with opacity
                                              spreadRadius:
                                                  2, // How much the shadow spreads
                                              blurRadius:
                                                  5, // Softness of the shadow
                                              offset: Offset(0,
                                                  3), // Position of the shadow (x, y)
                                            ),
                                          ],
                                          borderRadius: BorderRadius.circular(
                                              getSize(context, 15)),
                                        ),
                                        child: Center(
                                          child: TextBold18(
                                            color: index == tripIndex
                                                ? AppColors.white
                                                : AppColors.textColor,
                                            text: context.translate(
                                              index == 0
                                                  ? AppStrings.oneWay
                                                  : index == 1
                                                      ? AppStrings.roundTrip
                                                      : AppStrings.multiCity,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ))))
                      ],
                    ),
                    GapHeight(height: 70),
                    DestinationWidget(),
                    Padding(
                      padding: EdgeInsets.all(getPadding(context)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                // height: getSize(context, 54),
                                width: context.width * .4,
                                padding: EdgeInsets.all(getSize(context, 5)),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.contColor4),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 5)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextBold16(
                                      text: departureDate != null
                                          ? DateFormat('E, dd MMM - yyyy')
                                              .format(departureDate!)
                                          // "${departureDate!.day}/${departureDate!.month}/${departureDate!.year}"
                                          : "",
                                    ),
                                    IconButton(
                                        onPressed: () async {
                                          final DateTime? picked =
                                              await showDatePicker(
                                            context: context,
                                            initialDate:
                                                departureDate ?? DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2101),
                                            locale: Locale('en',
                                                'US'), // Set the locale to English (US)
                                          );
                                          if (picked != null &&
                                              picked != departureDate) {
                                            setState(() {
                                              departureDate = picked;
                                            });
                                          }
                                        },
                                        icon: Icon(Icons.date_range))
                                  ],
                                ),
                              ),
                              Positioned(
                                left: sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                right: !sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                top: -getSize(context, 2),
                                child: Container(
                                    // width: getSize(context, 59),
                                    // height: getSize(context, 10),
                                    padding:
                                        EdgeInsets.all(getSize(context, 2)),
                                    decoration: BoxDecoration(
                                        color: AppColors.contColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                getSize(context, 5)))),
                                    child: Center(
                                      child: TextNormal13(
                                        text: context
                                            .translate(AppStrings.departure),
                                        color: AppColors.white,
                                      ),
                                    )),
                              )
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                // height: getSize(context, 54),
                                width: context.width * .4,
                                padding: EdgeInsets.all(getSize(context, 5)),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.contColor4),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 5)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextBold16(
                                      text: returnDate != null
                                          ? DateFormat('E, dd MMM - yyyy')
                                              .format(returnDate!)
                                          // "${departureDate!.day}/${departureDate!.month}/${departureDate!.year}"
                                          : "",
                                    ),
                                    IconButton(
                                        onPressed:
                                            //  () => tripIndex == 1
                                            //     ? showToastMessage(
                                            //         context,
                                            //         context.translate(
                                            //             AppStrings.oneWay))
                                            // :
                                            () async {
                                          print("object");
                                          final DateTime? picked =
                                              await showDatePicker(
                                            context: context,
                                            initialDate:
                                                returnDate ?? DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2101),
                                            locale: Locale('en',
                                                'US'), // Set the locale to English (US)
                                          );
                                          if (picked != null &&
                                              picked != returnDate) {
                                            setState(() {
                                              returnDate = picked;
                                            });
                                          }
                                        },
                                        icon: Icon(Icons.date_range))
                                  ],
                                ),
                              ),
                              Positioned(
                                left: sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                right: !sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                top: -getSize(context, 2),
                                child: Container(
                                    // width: getSize(context, 59),
                                    // height: getSize(context, 10),
                                    padding:
                                        EdgeInsets.all(getSize(context, 2)),
                                    decoration: BoxDecoration(
                                        color: AppColors.contColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                getSize(context, 5)))),
                                    child: Center(
                                      child: TextNormal13(
                                        text: context
                                            .translate(AppStrings.return0),
                                        color: AppColors.white,
                                      ),
                                    )),
                              )
                            ],
                          ),
                          // Container(
                          //   height: getSize(context, 54),
                          //   width: context.width * .4,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.white,
                          //     borderRadius:
                          //         BorderRadius.circular(getSize(context, 5)),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                // height: getSize(context, 54),
                                width: context.width * .4,
                                padding: EdgeInsets.all(getSize(context, 25)),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.contColor4),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 5)),
                                ),
                                child: TextBold15(text: "1 Passenger"),
                              ),
                              Positioned(
                                left: sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                right: !sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                top: -getSize(context, 2),
                                child: Container(
                                    // width: getSize(context, 59),
                                    // height: getSize(context, 10),
                                    padding:
                                        EdgeInsets.all(getSize(context, 2)),
                                    decoration: BoxDecoration(
                                        color: AppColors.contColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                getSize(context, 5)))),
                                    child: Center(
                                      child: TextNormal13(
                                        text: context
                                            .translate(AppStrings.passenger),
                                        color: AppColors.white,
                                      ),
                                    )),
                              )
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                // height: getSize(context, 54),
                                width: context.width * .4,
                                padding: EdgeInsets.all(getSize(context, 25)),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.contColor4),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 5)),
                                ),
                                child: TextBold13(
                                    text: context
                                        .translate(AppStrings.economyClass)),
                              ),
                              Positioned(
                                left: sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                right: !sl<LocaleCubit>().isArabic
                                    ? getSize(context, 10)
                                    : null,
                                top: -getSize(context, 2),
                                child: Container(
                                    // width: getSize(context, 59),
                                    // height: getSize(context, 10),
                                    padding:
                                        EdgeInsets.all(getSize(context, 2)),
                                    decoration: BoxDecoration(
                                        color: AppColors.contColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                getSize(context, 5)))),
                                    child: Center(
                                      child: TextNormal13(
                                        text: context
                                            .translate(AppStrings.economyClass),
                                        color: AppColors.white,
                                      ),
                                    )),
                              )
                            ],
                          ),
                          // Container(
                          //   height: getSize(context, 54),
                          //   width: context.width * .4,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.white,
                          //     borderRadius:
                          //         BorderRadius.circular(getSize(context, 5)),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    GapHeight(height: 40),
                    Align(
                      child: AppButton(
                          onTap: (departureDate == null)
                              ? () => showToastMessage(context,
                                  context.translate(AppStrings.chooseData))
                              : () {
                                  BlocProvider.of<FlightCubit>(context)
                                      .search(SearchParams(
                                    arrivalTime: returnDate,
                                    destinationTime:
                                        DateTime(2023, 10, 1, 8, 0),
                                  ));
                                  Navigator.of(context)
                                      .pushNamed(Routes.searchScreen);
                                },
                          height: 40,
                          text: context.translate(AppStrings.searchFlights),
                          width: 140,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: AppColors.contColor1,
                          textColor: AppColors.white),
                    ),
                    GapHeight(height: 20),
                    Container(
                      padding: EdgeInsets.all(getPadding(context)),
                      height: getSize(context, 300),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Stack(
                          children: [
                            Column(
                              spacing: getSize(context, 10),
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBold16(
                                  text: context
                                      .translate(AppStrings.travelInspirations),
                                ),
                                Container(
                                  width: getSize(context, 226),
                                  height: getSize(context, 213),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(ImageAssets.ksa),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: getSize(context, 70),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getPadding(context)),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextBold12(
                                      text: "From AED867",
                                      color: AppColors.white,
                                    ),
                                    TextNormal13(
                                      text: "Economy round trip",
                                      color: AppColors.white,
                                    ),
                                    TextBold20(
                                      text: "Saudi Arabia",
                                      color: AppColors.white,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        separatorBuilder: (context, index) =>
                            GapWidth(width: 15),
                        itemCount: 5,
                      ),
                    ),
                    GapHeight(height: 20),
                    Padding(
                      padding: EdgeInsets.all(getPadding(context)),
                      child: Column(
                        spacing: getSize(context, 10),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBold16(
                            text: context.translate(AppStrings.hotel),
                          ),
                          Container(
                            width: context.width,
                            height: getSize(context, 213),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(ImageAssets.hotel),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getPadding(context)),
      margin: EdgeInsets.all(getPadding(context)),
      height: getSize(context, 140),
      width: context.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withValues(alpha: 0.5), // Shadow color with opacity
            spreadRadius: 0, // How much the shadow spreads
            blurRadius: 4, // Softness of the shadow
            offset: Offset(0, 3), // Position of the shadow (x, y)
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(getSize(context, 5))),
      ),
      child: Row(
        // spacing: getSize(context, 10),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: getSize(context, 20),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.flight,
                    color: AppColors.contColor2,
                    size: getSize(context, 20),
                  ),
                  Icon(
                    Icons.location_on,
                    color: AppColors.contColor2,
                    size: getSize(context, 20),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold16(text: context.translate(AppStrings.from)),
                  Container(
                    height: getSize(context, 1),
                    width: context.width * .5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.contColor2,
                          Colors.white
                        ], // Gradient colors
                        begin: Alignment
                            .centerLeft, // Start position of the gradient
                        end: Alignment
                            .centerRight, // End position of the gradient
                      ),
                      color: AppColors.contColor2,
                    ),
                  ),
                  TextBold16(text: context.translate(AppStrings.to)),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(getPadding(context)),
            // width: getSize(context, 42),
            // height: getSize(context, 42),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.contColor3,
            ),
            child: Center(
              child: Image.asset(ImageAssets.data),
            ),
          )
        ],
      ),
    );
  }
}
