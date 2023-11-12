import 'package:flumoxs/screens/home/another_screen/LS/models/data_video.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';

class SampleFavoriteProduct extends StatefulWidget {
  const SampleFavoriteProduct({super.key});

  @override
  State<SampleFavoriteProduct> createState() => _SampleFavoriteProductState();
}

class _SampleFavoriteProductState extends State<SampleFavoriteProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 250,
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   children:products
      //   .map((produts) => buildproductCard(context,image : produts.image)).toList() ,
      // ),
      child: ListView.builder(
        itemCount:products.length ,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildproductCard(context, index: index),
      ),
    );
  }

  Widget buildproductCard(BuildContext context,{required int index}) => FractionallySizedBox(
    child: ProductCard(produk:products[index], video:''),
  );
}