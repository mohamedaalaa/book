import 'dart:convert';

import 'package:book/core/utils/assets_manager.dart';
import 'package:book/features/home_screen/data/models/flight_model.dart';
import 'package:book/features/home_screen/domain/entity/flight.dart';
import 'package:flutter/services.dart';
import '../../../../core/api/api_consumer.dart';
import '../../../../core/models/response.dart';

abstract class FlightRemoteDataSource {
  Future<Response<List<Flight>?>> loadFlights();
}

class FlightRemoteDataSourceImpl extends FlightRemoteDataSource {
  final ApiConsumer apiConsumer;

  FlightRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<Response<List<Flight>?>> loadFlights() async {
    // var response = await apiConsumer.post("EndPoints.flightsUrl", body: {
    //   "registerEmailOrPhone": "mhamedalaa462@gmail.com",
    //   "password": "Khaled@123456",
    //   "deviceTypeId": 1,
    //   "deviceToken":
    //       "fjx2gooaTxCrO7Re7edoJo:APA91bHUF1y4duTlE1ztA_b5WCT4qSCzLJ6Z4Dqdo_6DU5ZJXv0342e6SaQ2pnLI1rEzoNrOS7Lmjg3tl9P77R_Bn_DdHcSquA-QTo5lUG7EzzvI9iwFZvQ"
    // }
    //  LoginModel.fromLogin(login).toJson(),
    // );

    //hwere we assume we loaded data successfully and decoded it
    //coz we don't have server will load it offline

    String jsonString = await rootBundle.loadString(FilesAssets.fileData);
    print("hna jsonString $jsonString");
    List<dynamic> jsonResponse = json.decode(jsonString);
    List<Flight> flights = FlightModel.fromJsonList(jsonResponse);
    print("hna flights $flights");
    // jsonResponse.map((flight) => FlightModel.fromJsonList(flight)).toList();

    return Response<List<Flight>?>(state: true, entity: flights);

    // if (response is ServerException) {
    //   try {
    //     return Response<List<Flight>?>(state: false, message: response.message);
    //   } catch (_) {
    //     return const Response<List<Flight>?>(state: false);
    //   }
    // } else {
    //   return ResponseModel.fromJson(
    //     response,
    //     // object: response['entity'] != null
    //     //     ?
    //     //     FlightModel.fromJson(response['entity'])
    //     //     : null
    //   );
    // }
  }
}

List<Flight> localFlights = [
  Flight(
    id: '1',
    origin: 'New York',
    destination: 'London',
    departureTime: DateTime(2023, 10, 1, 8, 0),
    arrivalTime: DateTime(2023, 10, 1, 20, 0),
    rtOrigin: 'London',
    rtDestination: 'New York',
    rtDepartureTime: DateTime(2023, 10, 15, 8, 0),
    rtArrivalTime: DateTime(2023, 10, 15, 20, 0),
  ),
  Flight(
    id: '2',
    origin: 'Los Angeles',
    destination: 'Tokyo',
    departureTime: DateTime(2023, 11, 5, 10, 0),
    arrivalTime: DateTime(2023, 11, 6, 14, 0),
    rtOrigin: 'Tokyo',
    rtDestination: 'Los Angeles',
    rtDepartureTime: DateTime(2023, 11, 20, 10, 0),
    rtArrivalTime: DateTime(2023, 11, 20, 14, 0),
  ),
  Flight(
    id: '3',
    origin: 'Paris',
    destination: 'Dubai',
    departureTime: DateTime(2023, 12, 10, 9, 0),
    arrivalTime: DateTime(2023, 12, 10, 17, 0),
    rtOrigin: 'Dubai',
    rtDestination: 'Paris',
    rtDepartureTime: DateTime(2023, 12, 25, 9, 0),
    rtArrivalTime: DateTime(2023, 12, 25, 17, 0),
  ),
];
