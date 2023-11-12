import 'package:flumoxs/screens/home/another_screen/AP/models/sample_product_AP.dart';
import 'package:flumoxs/screens/home/another_screen/AP/widgetsAP/sample_AP.dart';
import 'package:flumoxs/screens/home/another_screen/AP/widgetsAP/sample_card_AP.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flutter/material.dart';

class SampleProductAP extends StatefulWidget {
  const SampleProductAP({super.key});

  @override
  State<SampleProductAP> createState() => _SampleProductAPState();
}

class _SampleProductAPState extends State<SampleProductAP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesAP
              .map((samplesAP) =>
                  buildsampleCard(context, image: samplesAP.image, index: 0))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardAP(
          img: image, produk:products[index],
        ),
      );
}
