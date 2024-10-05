import 'package:bhagavad_gita_app/headers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FlutterLogoStyle mystyle = FlutterLogoStyle.markOnly;

  changePage() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        mystyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(const Duration(seconds: 4), (timer) {
      Navigator.of(context).pushReplacementNamed('/');

      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 867,
          child: const Image(
            image: AssetImage("assets/image/b1.png"),
          ),
        ),
      ),
    );
  }
}
