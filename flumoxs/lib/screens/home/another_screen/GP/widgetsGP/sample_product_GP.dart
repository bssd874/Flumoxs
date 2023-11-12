import 'package:flumoxs/screens/home/another_screen/GP/models/sample_product_GP.dart';
import 'package:flumoxs/screens/home/another_screen/GP/widgetsGP/sample_GP.dart';
import 'package:flumoxs/screens/home/another_screen/GP/widgetsGP/sample_card_GP.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductGP extends StatefulWidget {
  const SampleProductGP({super.key});

  @override
  State<SampleProductGP> createState() => _SampleProductGPState();
}

class _SampleProductGPState extends State<SampleProductGP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesGP
              .map((samplesGP) =>
                  buildsampleCard(context, image: samplesGP.image, index: 1))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardGP(
          img: image, produk: products[index],
        ),
      );
}
