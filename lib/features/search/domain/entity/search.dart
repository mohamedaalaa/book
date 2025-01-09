import 'package:equatable/equatable.dart';
// import 'package:paymentapp/core/utils/enums.dart';

class Search extends Equatable {
  final String? query;
  final String? lang;
  // final SearchType? searchType;

  const Search({
    this.query,
    this.lang,
    // this.searchType,
  });
  @override
  List<Object?> get props => [
        query,
        lang,
        // searchType,
      ];
}
