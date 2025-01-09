// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: depend_on_referenced_packages

// import 'package:book/features/employee_gate/configuration/data/datasource/configuration_local_datasource.dart';
// import 'package:book/features/start/domain/entity/start_machine_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../error/failures.dart';
import '../utils/app_strings.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<InternetConnectionStatus> get checkInternetConnection;
}

class NetworkInfoImpl extends NetworkInfo {
  late final InternetConnectionChecker _connectionChecker;
  // late final ErrorLog _errorLog;
  // late final ConfigurationLocalDataSource _configurationLocalDataSource;
  late final SharedPreferences _sharedPreferences;
  NetworkInfoImpl(this._connectionChecker, 
      this._sharedPreferences);

  @override
  Future<bool> get isConnected async {
    try {
      bool isConnected = await _connectionChecker.hasConnection;
      if (!isConnected) {
        String? lang = _sharedPreferences.getString(AppStrings.locale) ??
            AppStrings.arabicCode;
        // _errorLog.cacheError(MachineLog(
        //   machineId: (await _configurationLocalDataSource.getConfiguration())!
        //       .machineId,
        //   statusDescription: lang == AppStrings.englishCode
        //       ? AppStrings.noInternetOnMachineEn
        //       : AppStrings.noInternetOnMachineAr,
        //   machineStatusCode: 2, // timeout
        // ));
      }
      return isConnected;
    } on UnExpectedError {
      throw const UnExpectedError(message: AppStrings.networkInfoError);
    }
  }

  @override
  Stream<InternetConnectionStatus> get checkInternetConnection =>
      _connectionChecker.onStatusChange;
}
