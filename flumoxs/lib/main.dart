import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flumoxs/config/app_router.dart';
import 'package:flumoxs/local_storage/local_storage_repository.dart';
import 'package:flumoxs/screens/home/widgets/product.dart';
import 'package:flumoxs/screens/like/blocs/wishlist/wishlist_bloc.dart';
import 'package:flumoxs/screens/like/like_screen.dart';
import 'package:flumoxs/screens/login/login_screen.dart';
import 'package:flumoxs/screens/main/main_screen.dart';
import 'package:flumoxs/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(productAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),builder: (_)=>SplashScreen()
    );
  }

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>WishListBloc(
          localStorageRepository: LocalStorageRepository(),
        )..add(StartWishlist()))
      ],
      child: MaterialApp(
        title: 'Flumoxs',
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
