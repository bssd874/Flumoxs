import 'package:flumoxs/screens/home/another_screen/MA/models/sample_product_MA.dart';
import 'package:flumoxs/screens/home/another_screen/MA/widgetsMA/sample_MA.dart';
//import 'package:flumoxs/screens/home/another_screen/MA/widgetsMA/sample_card_MA.dart';
import 'package:flumoxs/screens/home/another_screen/MA/widgetsMa/sample_card_MA.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductMA extends StatefulWidget {
  const SampleProductMA({super.key});

  @override
  State<SampleProductMA> createState() => _SampleProductMAState();
}

class _SampleProductMAState extends State<SampleProductMA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesMA
              .map((samplesMA) =>
                  buildsampleCard(context, image: samplesMA.image, index:5 ))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardMA(img: image, produk: products[index]),
      );
}
