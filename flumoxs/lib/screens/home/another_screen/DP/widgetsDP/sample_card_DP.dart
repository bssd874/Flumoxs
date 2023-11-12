import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flutter/material.dart';

import '../../../widgets/detail_product_screen.dart';

class SampleCardDP extends StatelessWidget {
  final String img;
  final double width;
  final product produk;
  const SampleCardDP({super.key, required this.img, this.width = 194.0, required this.produk});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreens(
                  produk: produk,
                ),
              ));
        },
        child: Container(
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: 19),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: buildImage(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
  Widget buildImage() => Image.asset(
        img,
        width: width,
        height: 190,
        fit: BoxFit.cover,
      );  
    
}