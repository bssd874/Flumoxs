import 'package:flumoxs/local_storage/base_local_storage_repository.dart';
import 'package:hive/hive.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';

class LocalStorageRepository extends BaseLocalStorageRepository
{
  String boxName = 'wishlist_products';

  @override
  Future<Box> openBox() async {
    Box box = await Hive.openBox<product>(boxName);
    return box;
  }

  @override
  List<product> getWishList(Box box) {
    return box.values.toList() as List<product>;
  }

  @override
  Future<void> addProductToWishList(Box box, product product) async {
    await box.put(product.id,product);
  }

  @override
  Future<void> removeProductToWishList(Box box, product product) async {
    await box.delete(product.id);
  }

  @override
  Future<void> clearWishList(Box box) async {
    await box.clear();
  }

}