import 'package:book/core/common_widgets/error_screen.dart';
import 'package:book/core/constants/device_size.dart';
import 'package:book/core/constants/get_padding.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/di/injection_container.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/assets_manager.dart';
import 'package:book/core/utils/translation_manager.dart';
import 'package:book/features/home_screen/domain/entity/search_params.dart';
import 'package:book/features/home_screen/presentation/bloc/cubit/flight_cubit.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late int tripIndex;
  @override
  void initState() {
    tripIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: TextBold18(
              text: "Ezy Travel",
              color: AppColors.textColor,
            ),
            centerTitle: false,
            backgroundColor: AppColors.contColor,
            toolbarHeight: getSize(context, 76),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: getSize(context, 48),
                color: AppColors.textColor,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(getPadding(context)),
              width: context.width,
              padding: EdgeInsets.all(getPadding(context)),
              // height: getSize(context, 145),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(getSize(context, 10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBold14(
                    text: DateFormat('MMM dd').format(
                        sl<FlightCubit>().state.params!.destinationTime ??
                            DateTime.now()),
                  ),
                  if (sl<FlightCubit>().state.params?.destinationTime != null)
                    TextBold14(
                      text: DateFormat('MMM dd').format(
                          sl<FlightCubit>().state.params!.arrivalTime ??
                              DateTime.now()),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: getSize(context, 10),
                    children: [
                      TextBold14(
                        text: "(${context.translate(AppStrings.roundTrip)})",
                        color: AppColors.textColor1,
                      ),
                      TextBold12(
                        text: "(${context.translate(AppStrings.modifySearch)})",
                        color: AppColors.contColor2,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextBold14(text: context.translate(AppStrings.sort)),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: getSize(context, 24),
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      TextBold14(
                        text: "Non - Stop",
                        color: AppColors.textColor2,
                      ),
                      TextBold14(
                        text: "Filter",
                        color: AppColors.textColor2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(getPadding(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: getSize(context, 20),
                children: [
                  InkWell(
                    onTap: () {
                      BlocProvider.of<FlightCubit>(context).search(SearchParams(
                        destinationTime: DateTime(2023, 10, 1, 8, 0),
                      ));
                      setState(() {
                        tripIndex = 0;
                      });
                    },
                    child: Container(
                      height: getSize(context, 45),
                      width: context.width * .2,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: tripIndex == 0
                                  ? AppColors.contColor2
                                  : AppColors.contColor6),
                          borderRadius:
                              BorderRadius.circular(getSize(context, 15))),
                      child: Column(children: [
                        TextBold12(
                            text: DateFormat('MMM dd').format(sl<FlightCubit>()
                                    .state
                                    .params!
                                    .destinationTime ??
                                DateTime.now())),
                        TextBold12(text: "From AED 741"),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<FlightCubit>(context).search(SearchParams(
                        destinationTime: DateTime(2023, 10, 1, 8, 0),
                      ));
                      setState(() {
                        tripIndex = 1;
                      });
                    },
                    child: Container(
                      height: getSize(context, 45),
                      width: context.width * .2,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: tripIndex == 1
                                  ? AppColors.contColor2
                                  : AppColors.contColor6),
                          borderRadius:
                              BorderRadius.circular(getSize(context, 15))),
                      child: Column(children: [
                        TextBold12(
                            text: DateFormat('MMM dd').format(sl<FlightCubit>()
                                    .state
                                    .params!
                                    .destinationTime ??
                                DateTime.now())),
                        TextBold12(text: "From AED 741"),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<FlightCubit>(context).search(SearchParams(
                        destinationTime: DateTime(2023, 10, 1),
                      ));
                      setState(() {
                        tripIndex = 1;
                      });
                    },
                    child: Container(
                      height: getSize(context, 45),
                      width: context.width * .2,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: tripIndex == 2
                                  ? AppColors.contColor2
                                  : AppColors.contColor6),
                          borderRadius:
                              BorderRadius.circular(getSize(context, 15))),
                      child: Column(children: [
                        TextBold12(
                            text: DateFormat('MMM dd').format(sl<FlightCubit>()
                                    .state
                                    .params!
                                    .destinationTime ??
                                DateTime.now())),
                        TextBold12(text: "From AED 741"),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          BlocBuilder<FlightCubit, FlightState>(
            builder: (context, state) {
              if (!state.isLoaded) {
                return SliverToBoxAdapter(child: SizedBox());
              } else {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(getPadding(context)),
                    child: TextBold15(
                        text:
                            "${sl<FlightCubit>().state.filteredFlights?.length} ${context.translate(AppStrings.flights)}"),
                  ),
                );
              }
            },
          ),
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
                    child: ErrorScreen(
                  message: state.errorMsg,
                ));
              } else if (state.isLoaded && state.filteredFlights!.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: TextBold18(
                      text: context.translate(AppStrings.noFlights),
                    ),
                  ),
                );
              }

              return SliverList.separated(
                itemCount: sl<FlightCubit>().state.filteredFlights?.length,
                itemBuilder: (context, index) => Container(
                  width: context.width,
                  // height: getSize(context, 200),
                  margin: EdgeInsets.all(getPadding(context)),
                  padding: EdgeInsets.all(getPadding(context)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(getSize(context, 20)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        )
                      ]),
                  child: Column(
                    children: [
                      Line(
                        destination: context.translate(AppStrings.onward),
                        destination1:
                            "${sl<FlightCubit>().state.flights?[index].destination}",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextBold22(
                                  text: DateFormat('hh:mm a').format(
                                      sl<FlightCubit>()
                                              .state
                                              .flights?[index]
                                              .departureTime ??
                                          DateTime.now())),
                              TextBold13(
                                  text:
                                      "${sl<FlightCubit>().state.flights?[index].origin}"),
                            ],
                          ),
                          Dash1(),
                          Column(
                            children: [
                              TextBold22(
                                  text: DateFormat('hh:mm a').format(
                                      sl<FlightCubit>()
                                              .state
                                              .flights?[index]
                                              .departureTime ??
                                          DateTime.now())),
                              TextBold13(
                                  text:
                                      "${sl<FlightCubit>().state.flights?[index].destination}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.width,
                        child: Divider(
                          color: AppColors.contColor6,
                          thickness: 1,
                        ),
                      ),
                      Line(
                        destination: context.translate(AppStrings.onward),
                        destination1:
                            "${sl<FlightCubit>().state.flights?[index].origin}",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextBold22(
                                  text: DateFormat('hh:mm a').format(
                                      sl<FlightCubit>()
                                              .state
                                              .flights?[index]
                                              .rtArrivalTime ??
                                          DateTime.now())),
                              TextBold13(
                                  text:
                                      "${sl<FlightCubit>().state.flights?[index].rtOrigin}"),
                            ],
                          ),
                          Dash1(),
                          Column(
                            children: [
                              TextBold22(
                                  text: DateFormat('hh:mm a').format(
                                      sl<FlightCubit>()
                                              .state
                                              .flights?[index]
                                              .rtDepartureTime ??
                                          DateTime.now())),
                              TextBold13(
                                  text:
                                      "${sl<FlightCubit>().state.flights?[index].rtDestination}"),
                            ],
                          ),
                        ],
                      ),
                      GapHeight(height: 20),
                      Dash(
                        direction:
                            Axis.horizontal, // Horizontal or vertical line
                        length: context.width * .8, // Length of the line
                        dashLength: 5, // Length of each dash
                        dashColor: AppColors.contColor6, // Color of the dashes
                        dashThickness: 1, // Thickness of the line
                      ),
                      GapHeight(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: getSize(context, 20),
                            children: [
                              Container(
                                padding: EdgeInsets.all(getSize(context, 5)),
                                // height: getSize(context, 1 8),
                                width: getSize(context, 70),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.contColor7),
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 9)),
                                ),
                                child: Center(
                                  child: TextBold9(
                                    text:
                                        context.translate(AppStrings.cheapest),
                                    color: AppColors.contColor7,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(getSize(context, 5)),
                                // height: getSize(context, 1 8),
                                width: getSize(context, 70),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.contColor8,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      getSize(context, 9)),
                                ),
                                child: Center(
                                  child: TextBold9(
                                    text: context
                                        .translate(AppStrings.refundable),
                                    color: AppColors.contColor8,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextBold12(
                                text:
                                    context.translate(AppStrings.flightDetails),
                                color: AppColors.textColor1,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                // Icons.more_horiz,
                                size: getSize(context, 10),
                                color: AppColors.textColor1,
                              )
                              // Icon(Icons.more)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => GapHeight(height: 10),
              );
            },
          )
        ],
      ),
    );
  }
}

class Dash1 extends StatelessWidget {
  const Dash1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Dash(
          direction: Axis.horizontal, // Horizontal or vertical line
          length: getSize(context, 126), // Length of the line
          dashLength: 5, // Length of each dash
          dashColor: AppColors.contColor2, // Color of the dashes
          dashThickness: 1, // Thickness of the line
        ),
        Image.asset(
          ImageAssets.plane,
          width: getSize(context, 20),
          height: getSize(context, 20),
        ),
      ],
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    super.key,
    required this.destination,
    required this.destination1,
  });
  final String destination;
  final String destination1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: getSize(context, 20),
          children: [
            Image.asset(
              ImageAssets.flightLogo,
              width: getSize(context, 35),
              height: getSize(context, 35),
            ),
            TextBold14(text: "$destination - $destination1"),
          ],
        ),
        TextBold16(
          text: "AED 409",
          color: AppColors.contColor2,
        ),
      ],
    );
  }
}
