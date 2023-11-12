import 'package:flumoxs/screens/home/another_screen/LS/models/data_sample.dart';
import 'package:flumoxs/screens/home/another_screen/LS/models/data_video.dart';
import 'package:flumoxs/screens/home/another_screen/LS/widget_ds/sample.dart';
import 'package:flumoxs/screens/home/another_screen/LS/widget_ds/sample_card.dart';
import 'package:flumoxs/screens/home/another_screen/LS/widget_ds/video_screen.dart';
import 'package:flutter/material.dart';

class SampleProduct extends StatefulWidget {
  const SampleProduct({super.key});

  @override
  State<SampleProduct> createState() => _SampleProductState();
}

class _SampleProductState extends State<SampleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(vertical: 30),
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   children: samples
      //       .map((sample) => buildsampleCard(context, image: sample.image))
      //       .toList(),
      // ),
      child: ListView.builder(
        itemCount: samples.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildsampleCard(context, index: index),
      ),
    );
  }

  Widget buildsampleCard(BuildContext context, {required int index}) =>
      FractionallySizedBox(
        child: SampleCard(img: samples[index].image, video: videos[index].vidPath),
      );
}