import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_bloc_project/data/wishlist_items.dart';
import 'package:meta/meta.dart';

import '../../home/model/home_product_data_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>(wishListInitialEvent);
  }

  FutureOr<void> wishListInitialEvent(
      WishlistEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSucessState(wishlistItems: wishlistItems));
  }
}
