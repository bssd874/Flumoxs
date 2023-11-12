import 'package:flumoxs/screens/home/widgets/detail_product_screen.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flutter/material.dart';

import '../another_screen/LS/widget_ds/video_screen.dart';

class ProductCard extends StatelessWidget {
  //final String img;
  //final String desc;
  //final String nem;
  final double width;
  final product produk;
  final String video;

  const ProductCard({super.key, this.width = 194.0,required this.produk, required this.video});

  @override
  Widget build(BuildContext context)=> InkWell(
    onTap: () {
      var index = 0;
      if (index == 7) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen(video: video),));
      }else{
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreens(produk: produk,),
            )
        );
      }
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
  Widget buildImage()=>Image.asset(
    produk.image,
    width: width,
    height: 190,
    fit: BoxFit.cover,
  );
}