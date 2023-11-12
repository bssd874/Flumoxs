import 'package:equatable/equatable.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';

//import '../widgets/product.dart' as ae;

class WishList extends Equatable
{
  final List<product> products;

  const WishList({this.products = const <product>[]});


  @override
  List<Object?> get props => [products];
}