import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseLocalStorageRepository{
  Future<Box> openBox();
  List<product> getWishList(Box box);
  Future<void> addProductToWishList(Box box,product product);
  Future<void> removeProductToWishList(Box box, product product);
  Future<void> clearWishList(Box box);
}