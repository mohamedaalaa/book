// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:paymentapp/core/di/injection_container.dart';
// import 'package:paymentapp/features/clients/domain/entities/client.dart';
// import 'package:paymentapp/features/price/presentation/bloc/price_bloc.dart';
// import 'package:paymentapp/features/products/domain/entities/product.dart';
// import 'package:paymentapp/features/search/domain/entity/search.dart';
// import 'package:paymentapp/features/search/domain/usecase/search_clients_usecase.dart';
// import 'package:paymentapp/features/search/domain/usecase/search_products_usecase.dart';
// import 'package:rxdart/rxdart.dart';
// part 'search_event.dart';
// part 'search_state.dart';

// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   SearchBloc(this._searchClientUseCase, this._searchProductsUseCase)
//       : super(SearchInitial()) {
//     on<SearchClientsEvent>(_searchClients,
//         transformer: (events, mapper) =>
//               events.debounceTime(const Duration(seconds: 1)).switchMap(mapper));
//     on<SearchProductsEvent>(_searchProducts,
//         transformer: (events, mapper) =>
//             events.debounceTime(const Duration(seconds: 1)).switchMap(mapper));

//     on<ResetSearchQueryEvent>(_reset);
//   }

//   late final SearchClientUseCase _searchClientUseCase;
//   late final SearchProductsUseCase _searchProductsUseCase;

//   Future<void> _searchClients(SearchClientsEvent event, Emitter emit) async {
//     if (event.search?.query == null || event.search!.query!.isEmpty) {
//       emit(const SearchFoundWithoutProducts());
//     } else {
//       emit(const SearchRunning());
//       var response = await _searchClientUseCase.call(event.search!);
//       response.fold((l) => emit(SearchError(msg: l.message)), (r) {
//         emit(SearchClientsFound(clients: r));
//       });
//     }
//   }

//   Future<void> _searchProducts(SearchProductsEvent event, Emitter emit) async {
//     emit(const SearchRunning());
//     if (event.search?.query == null || event.search!.query!.isEmpty) {
//       print("hna search 0");
//       emit(const SearchFoundWithoutProducts());
//     } else {
//       print("hna search 0");
//       var response = await _searchProductsUseCase.call(event.search!);
//       response.fold((l) => emit(SearchError(msg: l.message)), (r) {
//         emit(SearchProductsFound(products: r));
//       });
//     }
//   }

//   int? getProductIndex(int id) {
//     if (state is SearchProductsFound) {
//       var currentState = state as SearchProductsFound;
//       var products = List<Product>.from(currentState.products!.toList());
//       for (int i = 0; i < products.length; i++) {
//         if (products[i].id == id) {
//           return products.indexOf((state as SearchProductsFound).products![i]);
//         }
//       }
//     }
//     return null;
//   }

//   void loadProduct(
//     int index,
//   ) {
//     if (state is SearchProductsFound) {
//       var currentState = state as SearchProductsFound;
//       var products = List<Product>.from(currentState.products!.toList());

//       // if (products.isNotEmpty) {
//       //   products[index] = products[index].copyWith(
//       //     isLoading: !products[index].isLoading!,
//       //   );
//       // }

//       emit(SearchProductsFound(
//         products: products,
//       ));
//     }
//   }

//   void addProduct(
//     int index,
//   ) {
//     if (state is SearchProductsFound) {
//       var currentState = state as SearchProductsFound;
//       var products = List<Product>.from(currentState.products!.toList());

//       if (products.isNotEmpty) {
//         products[index] = products[index].copyWith(
//           isAdded: !products[index].isAdded!,
//           result: sl<PriceBloc>().getResult,
//           controller:
//               TextEditingController(text: "${products[index].quantity}"),
//         );
//       }

//       emit(SearchProductsFound(products: products));
//     }
//   }

//   void removeProduct(int? id) {
//     if (state is SearchProductsFound) {
//       var currentState = state as SearchProductsFound;
//       var products = List<Product>.from(currentState.products!.toList());

//       for (int i = 0; i < products.length; i++) {
//         if (products[i].id == id) {
//           products[i] = products[i].copyWith(
//               isAdded: false, result: null, quantity: 1, controller: null);
//         }
//       }

//       emit(SearchProductsFound(
//         products: products,
//       ));
//     }
//   }

//   Future<void> _reset(ResetSearchQueryEvent event, Emitter emit) async {
//     emit(const SearchFoundWithoutProducts());
//   }
// }
