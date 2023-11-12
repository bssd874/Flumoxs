import 'package:flumoxs/screens/home/another_screen/AP/detail_screen_ap.dart';
import 'package:flumoxs/screens/home/another_screen/DP/detail_screen_dp.dart';
import 'package:flumoxs/screens/home/another_screen/FP/detail_screen_fp.dart';
import 'package:flumoxs/screens/home/another_screen/GP/detail_screen_gp.dart';
import 'package:flumoxs/screens/home/another_screen/LS/detail_screens.dart';
import 'package:flumoxs/screens/home/another_screen/MA/detail_screen_ma.dart';
import 'package:flumoxs/screens/home/another_screen/SS/detail_screen_ss.dart';
import 'package:flumoxs/screens/home/another_screen/TA/detail_screen_ta.dart';
import 'package:flutter/material.dart';

class BtnMainMenus extends StatefulWidget {
  const BtnMainMenus({super.key});

  @override
  State<BtnMainMenus> createState() => _BtnMainMenusState();
}

class _BtnMainMenusState extends State<BtnMainMenus> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children:[
           Column(mainAxisSize: MainAxisSize.min, children: [
            IconButton(
              icon: Image.asset("assets/icons/Ellipse 1 .png"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreens()));
              },
              iconSize: 60,
            ),
            
          ]),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 2 .png"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreenTA()));
                },
                iconSize: 60,
              ),
              
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 3 .png"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreenFP()));
                },
                iconSize: 60,
              ),
              
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 4 .png"),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>DetailScreenGP()));
                },
                iconSize: 60,
              ),
              
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 5.png"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreenMA()));
                },
                iconSize: 60,
              ),
             
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 6.png"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreenAP()));
                },
                iconSize: 60,
              ),
              
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 7.png"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreenDP()));
                },
                iconSize: 60,
              ),
             
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset("assets/icons/Ellipse 8.png"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreenSS()));
                },
                iconSize: 60,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}

// class MenuIcon extends StatelessWidget {
//    final String imageAsset;
//   const MenuIcon({
//     Key? key, required this.imageAsset,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         IconButton(
//           padding: const EdgeInsets.all(1),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreens()));
//           },

//           icon: Image.asset(
//             imageAsset,
//           ),
          
//           iconSize: 75,
//         ),
//       ],
//     );
//   }
// }