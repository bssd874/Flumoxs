import 'package:flumoxs/screens/home/widgets/detail_product_screen.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/like/blocs/wishlist/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import '../../home/widgets/detail_product_screen.dart';

class ProductCardWhislist extends StatelessWidget {
  // final String img;
  // final String desc;
  // final String nem;
  final double width;
  final double height;
  final bool isWishList;
  final product produk;
  const ProductCardWhislist({super.key, this.width = 194.0,this.height = 195, this.isWishList = false, required this.produk});
    
  @override
  Widget build(BuildContext context){
    final double widthValue = MediaQuery.of(context).size.width/width;
    final double heightValue = MediaQuery.of(context).size.height/height;
    return  InkWell(
      onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreens(produk:produk),
              )),
      child: Container(
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 19),
        child:Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-1,0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: buildImage(),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 1),
              child: Container(
                width: 99,
                height: 29.7,
                decoration: BoxDecoration(
                  color: Color(0x9D000000),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Stack(
                  children: [
                    isWishList
                        ? IconButton(
                            padding: EdgeInsets.fromLTRB(35, 0, 0, 3),
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              final snackBar = SnackBar(content: Text("Remove from your wishlist"));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              context
                                .read<WishListBloc>()
                                .add(RemoveProductFromWishlist(produk));
                            },
                            color: Colors.white,
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildImage()=>Image.asset(
    produk.image,
    width: width,
    height: height,
    fit: BoxFit.cover,
    
  );
}