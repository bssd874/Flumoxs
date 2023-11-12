import 'package:flumoxs/screens/home/another_screen/DP/models/sample_product_DP.dart';
import 'package:flumoxs/screens/home/another_screen/DP/widgetsDP/sample_DP.dart';
import 'package:flumoxs/screens/home/another_screen/DP/widgetsDP/sample_card_DP.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductDP extends StatefulWidget {
  const SampleProductDP({super.key});

  @override
  State<SampleProductDP> createState() => _SampleProductDPState();
}

class _SampleProductDPState extends State<SampleProductDP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesDP
              .map((samplesDP) =>
                  buildsampleCard(context, image: samplesDP.image, index:4 ))
              .toList(),
        ),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
       child: SampleCardDP(
          img: image, produk: products[index], 
        ),
      );
}
