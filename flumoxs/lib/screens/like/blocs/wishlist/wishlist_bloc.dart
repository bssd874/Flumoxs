///import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flumoxs/local_storage/local_storage_repository.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/like/models/wishlist_model.dart';
import 'package:flumoxs/screens/like/widgets/product_card_wishlist.dart';
import 'package:hive/hive.dart';

//import '../../widgets/product.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState>
{
  final LocalStorageRepository _localStorageRepository;

  WishListBloc(
    {required LocalStorageRepository localStorageRepository}
  ) : _localStorageRepository = localStorageRepository,
  super(WishListLoading()){
    on<StartWishlist>(_onStartWishlist);
    on<AddProductToWishlist>(_onAddProductToWishlist);
    on<RemoveProductFromWishlist>(_onRemoveProductFromWishlist);
  }

  void _onStartWishlist(event,Emitter<WishListState> emit) async
  {
    emit(WishListLoading());

    try {
      Box box = await _localStorageRepository.openBox();
      List<product> products = _localStorageRepository.getWishList(box);
      await Future<void>.delayed(Duration(seconds: 1));
      emit( WishListLoaded(
        wishlist: WishList(products: products),
      ));
    } catch (_) {
      emit(WishListError());
    }
  }

   void _onAddProductToWishlist(AddProductToWishlist event,Emitter<WishListState> emit) async
  {
    final state = this.state;
    if (state is WishListLoaded) {
      try {
        Box box = await _localStorageRepository.openBox();
        _localStorageRepository.addProductToWishList(box, event.produk);
        emit(
          WishListLoaded(
            wishlist: WishList(
              products: 
                List.from((this.state as WishListLoaded).wishlist.products)
                ..add(event.produk)
            )
          )
        );
      }on Exception{
        emit(WishListError());
      }
    }
  }

   void _onRemoveProductFromWishlist(RemoveProductFromWishlist event,Emitter<WishListState> emit) async
  {
    final state = this.state;
    if (state is WishListLoaded) {
      try {
        Box box = await _localStorageRepository.openBox();
        _localStorageRepository.removeProductToWishList(box, event.produk);
        emit(
          WishListLoaded(
            wishlist: WishList(
              products: 
                List.from((this.state as WishListLoaded).wishlist.products)
                ..remove(event.produk)
            )
          )
        );
      } on Exception {
        emit(WishListError());
      }
    }
  }
  // Stream<WishListState> mapEventToState(
  //   WishListEvent event,
  // )async*{
  //   if (event is StartWishList) {
  //     yield* _mapStartWishListToState();
  //   }else if(event is AddWishListProduct){
  //     yield*_mapAddWishListProductToState(event,state);
  //   }else if (event is RemoveWishListProduct) {
  //     yield* _mapRemoveWishListProductToState(event, state);
  //   }
  

  

  

 
}