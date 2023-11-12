import 'package:hive/hive.dart';

part 'product.g.dart';
@HiveType(typeId: 0)
class product {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String name;
  // @HiveField(4)
  // final String category;
  final String kategori;
  const product({required this.image,required this.description,required this.name,required this.id/*,required this.category*/,
      required this.kategori});
}

