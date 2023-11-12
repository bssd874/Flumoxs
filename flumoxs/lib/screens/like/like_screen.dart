import 'package:flumoxs/screens/home/model/data_product.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/home/widgets/product_card.dart';
import 'package:flumoxs/screens/like/blocs/wishlist/wishlist_bloc.dart';
import 'package:flumoxs/screens/like/widgets/product_card_wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B3A55),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3A55),
        elevation: 0,
        title: Text(
          "WISHLIST",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFAFAFA)
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<WishListBloc,WishListState>(
        builder: (context,state){
         if (state is WishListLoading) {
           return Center(
            child: CircularProgressIndicator(),
           );
          }
          if (state is WishListLoaded) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.8),
              itemCount: state.wishlist.products.length,
              itemBuilder: (context, index) {
                return Center(
                  child: ProductCardWhislist(
                    produk: state.wishlist.products[index],
                    width: 400,
                    height: 170,
                    isWishList: true,
                  ),
                );
              },
            );
          } else{
            return Text('Something Went Wrong');
          }
        }
      )
      
      
    );
  }
}
