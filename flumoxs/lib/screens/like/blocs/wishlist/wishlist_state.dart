part of 'wishlist_bloc.dart';

abstract class WishListState extends Equatable
{
  const WishListState();

  List<Object> get props => [];
}

class WishListLoading extends WishListState
{
  
}

class WishListLoaded extends WishListState {
  final WishList wishlist;

  const WishListLoaded({this.wishlist = const WishList()});

  List<Object> get props => [wishlist];
}


class WishListError extends WishListState {}
