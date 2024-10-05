import 'package:bhagavad_gita_app/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes appRoutes = AppRoutes._();

  String homePage = '/';

  Map<String, Widget Function(BuildContext)> route = {
    "/": (context) => const HomePage(),
    "splash_screen": (context) => const SplashScreen(),
    "Detail_Page": (context) => const DetailPage(),
    "Sloka_Page": (context) => const SlokaPage(),
  };
}
