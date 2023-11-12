import 'package:flumoxs/screens/home/another_screen/FP/models/sample_product_FP.dart';
import 'package:flumoxs/screens/home/another_screen/FP/widgetsFP/sample_FP.dart';
import 'package:flumoxs/screens/home/another_screen/FP/widgetsFP/sample_card_FP.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductFP extends StatefulWidget {
  const SampleProductFP({super.key});

  @override
  State<SampleProductFP> createState() => _SampleProductFPState();
}

class _SampleProductFPState extends State<SampleProductFP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesFP
              .map((samplesFP) =>
                  buildsampleCard(context, image: samplesFP.image, index: 2))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardFP(
          img: image, produk: products[index],
        ),
      );
}
