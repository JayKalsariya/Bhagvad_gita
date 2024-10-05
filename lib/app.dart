import 'package:bhagavad_gita_app/routes.dart';

import 'headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: AppRoutes.appRoutes.route,
    );
  }
}
