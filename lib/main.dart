import 'headers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(ChangeNotifierProvider(
    create: (context) => slokacontroller(),
    child: const MyApp(),
  ));
}
