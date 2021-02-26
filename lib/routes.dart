import 'package:flutter/widgets.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/screen_tt.dart';
import 'package:flutter_kepegawaian/screens/Layanan_unggulan/layanan_unggulan.dart';
import 'package:flutter_kepegawaian/screens/cart/cart_screen.dart';
import 'package:flutter_kepegawaian/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_kepegawaian/screens/details/details_screen.dart';
import 'package:flutter_kepegawaian/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_kepegawaian/screens/home/home_screen.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/jadwaldokter.dart';
import 'package:flutter_kepegawaian/screens/login_success/login_success_screen.dart';
import 'package:flutter_kepegawaian/screens/otp/otp_screen.dart';
import 'package:flutter_kepegawaian/screens/profile/profile_screen.dart';
import 'package:flutter_kepegawaian/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_kepegawaian/screens/splash/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  KetersediaanTT.routeName: (context) => KetersediaanTT(),
  JadwalDokter.routeName: (context) => JadwalDokter(),
  LayananUnggulan.routeName: (context) => LayananUnggulan(),
};
