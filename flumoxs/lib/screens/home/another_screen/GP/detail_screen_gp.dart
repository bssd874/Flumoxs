import 'package:flumoxs/screens/home/another_screen/GP/widgetsGP/sample_product_GP.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreenGP extends StatefulWidget {
  const DetailScreenGP({super.key});

  @override
  State<DetailScreenGP> createState() => _DetailScreenGPState();
}

class _DetailScreenGPState extends State<DetailScreenGP> {
  String url = "whatsapp://send?phone=6281387272998";

  // ignore: no_leading_underscores_for_local_identifiers
  Future<void> _launchUrl() async {
    Uri whatsapp = Uri.parse(Uri.encodeFull(url));
    if (!await launchUrl(whatsapp)) {
      throw 'Could not launch $whatsapp';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B3A55),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2B3A55),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(120, 21, 120, 0),
            child: Text(
              "SERVICE DETAIL",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFAFAFA)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 31, 0, 0),
                  child: Container(
                    width: 269,
                    height: 274,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/logo4.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18.98),
                          child: Container(
                            width: 62.2,
                            height: 58,
                            decoration: BoxDecoration(
                                color: Color(0xFF2B3A55),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xFF253146), width: 5)),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "CATEGORY",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Foto Product",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8.5,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18.98),
                          child: Container(
                            width: 62.2,
                            height: 58,
                            decoration: BoxDecoration(
                                color: Color(0xFF2B3A55),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF253146),
                                  width: 5,
                                )),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                  iconSize: 20,
                                  onPressed: () {
                                    _launchUrl();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1, 20, 80, 0),
              child: Text(
                "Gamora Production",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1, 28, 250, 0),
              child: Text(
                "Description",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(47, 5, 21, 0),
              child: Text(
                "Menyediakan foto jasa product yang berbentuk media promosi yang dilakukan oleh peprusahhan guna mempromosikan sebuah sebuah product kepada konsumen untuk membeli produk tersebut.",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 28, 250, 0),
              child: Text(
                "Sample Product",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
            SampleProductGP()
          ],
        ),
      ),
    );
  }
}
