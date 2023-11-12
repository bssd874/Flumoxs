import 'package:flumoxs/screens/home/another_screen/LS/widget_ds/video_screen.dart';
import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  final String img;
  final String video;
  final double width;
  const SampleCard({super.key, required this.img, this.width = 194.0, required this.video});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen(video: video),)),
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