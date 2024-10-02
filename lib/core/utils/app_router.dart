import 'package:go_router/go_router.dart';
import 'package:modernlogintute/features/auth/presentation/views/login_page.dart';
import 'package:modernlogintute/features/auth/presentation/views/signup_page.dart';
import 'package:modernlogintute/features/cart/presentation/views/cartview.dart';
import 'package:modernlogintute/features/home/presentation/views/homeview.dart';
import 'package:modernlogintute/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kLogin = '/login';
  static const kSignup = '/signup';
  static const kSplashView = '/splash';
  static const kHomeView = '/home';
  static const kCartView = '/cart';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLogin,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: kSignup,
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomePageView(),
    ),
    GoRoute(
      path: kCartView,
      builder: (context, state) => const CartPageView(),
    ),
  ]);
}
