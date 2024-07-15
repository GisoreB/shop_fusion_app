import 'firebase_options.dart';
import 'injection_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/auth/presentation/bloc/cubit/auth_cubit.dart';
import 'feature/auth/presentation/screens/auth_screens/auth_main_screen.dart';
import 'feature/auth/presentation/screens/auth_screens/create_profile_screen.dart';
import 'feature/auth/presentation/screens/auth_screens/login_screen.dart';
import 'feature/auth/presentation/screens/auth_screens/signup_screen.dart';
import 'feature/auth/presentation/screens/splash_screen/main_splash_screen.dart';
import 'feature/product/presentation/bloc/cubit/product_cubit.dart';
import 'feature/product/presentation/screens/home/cart/cart_screen.dart';
import 'feature/product/presentation/screens/home/home/carousel_list.dart';
import 'feature/product/presentation/screens/home/home/home_screen.dart';
import 'feature/product/presentation/screens/home/home/most_popular_product_screen.dart';
import 'feature/product/presentation/screens/home/main_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setup();
  runApp(const MyApp());
}

String isAuth() {
  if (FirebaseAuth.instance.currentUser != null) {
    return MainHomeScreen.routename;
  }
  return '/';
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isAuth(),
      routes: {
        '/': (context) => const MainSplashScreen(),
        AuthMainScreen.routename: (context) => const AuthMainScreen(),
        SignUpScreen.routename: (context) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignUpScreen(),
        ),
        LoginScreen.routename:((context)=>BlocProvider(
          create: (context) => AuthCubit(),
          child: const LoginScreen(),
        )),
        CreateProfileScreen.routename: (context) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const CreateProfileScreen(),
        ),
        HomeScreen.routename: (context) => const HomeScreen(),
        CarouselList.routename: (context) => const CarouselList(),
        MostPopularProductScreen.routename: (context) =>
            const MostPopularProductScreen(),
        CartScreen.routename: (context) => CartScreen(),
        MainHomeScreen.routename: (context) => BlocProvider(
          create: (context) => ProductCubit(),
          child: const MainHomeScreen(),
        )
      },
    );
  }
}