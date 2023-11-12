import 'package:flumoxs/screens/home/another_screen/SS/models/sample_product_SS.dart';
import 'package:flumoxs/screens/home/another_screen/SS/widgetsSS/sample_SS.dart';
import 'package:flumoxs/screens/home/another_screen/SS/widgetsSS/sample_card_SS.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductSS extends StatefulWidget {
  const SampleProductSS({super.key});

  @override
  State<SampleProductSS> createState() => _SampleProductSSState();
}

class _SampleProductSSState extends State<SampleProductSS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesSS
              .map((samplesSS) =>
                  buildsampleCard(context, image: samplesSS.image, index: 3))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardSS(
          img: image, produk: products[index],
        ),
      );
}
