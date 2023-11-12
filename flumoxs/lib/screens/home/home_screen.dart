import 'dart:ui';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flumoxs/screens/home/widgets/btn_main_menu.dart';
import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/home/widgets/sample_favorite_product.dart';
import 'package:flumoxs/screens/home/widgets/search_bar.dart';
import 'package:flumoxs/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF2B3A55),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3A55),
        flexibleSpace: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: const EdgeInsets.fromLTRB(19, 20, 157, 0),
            child: Wrap(
              children: const [
                Text(
                  "WELCOME TO FLUMOXS USER",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFAFAFA),
                  ),
                ),
                  //Padding(padding: EdgeInsets.fromLTRB(26, 53, 188, 0)),

                Text(
                  "LETS SEE OUR SERVICE",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color(0xFFFAFAFA),
                  ),
                ),
                
              ],
            )
          ),
        ),
        elevation: 0,
        toolbarHeight: 80,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchBarView(),
            SizedBox(
              height: 27,
            ),
            SectionTitle(title: "OUR SERVICE"),
            SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 19),
              elevation: 2,
              color: Color.fromARGB(255, 28, 38, 57),
              child: BtnMainMenus(),
            ),
            SizedBox(
              height: 27,
            ),
            SectionTitle(title: "Favorite Sample Product"), 
            SampleFavoriteProduct(),
            // Expanded(
            //   child: ScrollSnapList(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: _buildListItem,
            //     itemCount: products.length,
            //     itemSize: 150,
            //     onItemFocus: (index) {},
            //     dynamicItemSize: true,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
  // Widget _buildListItem(BuildContext context,int index)
  // {
  //   product productk = products[index];
  //   return SizedBox(
  //     width: 20,
  //     height: 30,
  //     child: Card(
  //       elevation: 12,
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.all(Radius.circular(10)),
  //         child: Column(
  //           children: [
  //             Image.asset(productk.image,fit: BoxFit.cover, width: 150,height: 180,)
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

