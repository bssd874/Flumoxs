part of 'wishlist_bloc.dart';

abstract class WishListEvent extends Equatable
{
  const WishListEvent();

}
class StartWishlist extends WishListEvent
{
  @override
  List<Object> get props => [];
}

class AddProductToWishlist extends WishListEvent {
  final product produk;

  const AddProductToWishlist(this.produk);

  List<Object> get props => [produk];
}

class RemoveProductFromWishlist extends WishListEvent {
  final product produk;

  const RemoveProductFromWishlist(this.produk);

  List<Object> get props => [produk];
}
