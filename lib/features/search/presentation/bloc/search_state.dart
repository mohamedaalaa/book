// part of 'search_bloc.dart';

// sealed class SearchState extends Equatable {
//   final int? clientIndex;
//   const SearchState({this.clientIndex});

//   @override
//   List<Object?> get props => [clientIndex];
// }

// final class SearchInitial extends SearchState {}

// class SearchRunning extends SearchState {
//   const SearchRunning();
// }

// class SearchClientsFound extends SearchState {
//   final List<Client>? clients;

//   @override
//   const SearchClientsFound({
//     this.clients,
//   });
//   @override
//   List<Object?> get props => [
//         clients,
//       ];
// }

// class SearchProductsFound extends SearchState {
//   final List<Product>? products;

//   @override
//   const SearchProductsFound({
//     this.products,
//   });
//   @override
//   List<Object?> get props => [
//         products,
//       ];
// }

// class SearchFoundWithoutProducts extends SearchState {
//   const SearchFoundWithoutProducts();
//   @override
//   List<Object?> get props => [];
// }

// class SearchError extends SearchState {
//   final String? msg;
//   const SearchError({
//     this.msg,
//   });
//   @override
//   List<Object?> get props => [msg];
// }
