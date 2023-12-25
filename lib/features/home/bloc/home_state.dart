part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitialEvent extends HomeEvent {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSucessState extends HomeState {
  final List<ProductDataModel> products;
  HomeLoadedSucessState({
    required this.products,
  });
}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProuctItemsWishlistedActionState extends HomeActionState {}

class HomeProuctItemsCartedActionState extends HomeActionState {}
