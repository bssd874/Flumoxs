import 'package:flumoxs/screens/home/another_screen/TA/models/sample_product_TA.dart';
import 'package:flumoxs/screens/home/another_screen/TA/widgetsTA/sampleTA.dart';
import 'package:flumoxs/screens/home/another_screen/TA/widgetsTA/sample_card_TA.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flutter/material.dart';

class SampleProductTA extends StatefulWidget {
  const SampleProductTA({super.key});

  @override
  State<SampleProductTA> createState() => _SampleProductTAState();
}

class _SampleProductTAState extends State<SampleProductTA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        height: 250,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: samplesTA
              .map((samplesTA) => buildsampleCard(context, image: samplesTA.image, index: 6))
              .toList(),
        ),
      ),
    );   
  }

   Widget buildsampleCard(BuildContext context, {required String image, required int index}) =>
      FractionallySizedBox(
        child: SampleCardTA(
          img: image, produk: products[index],
        ),
      );
}