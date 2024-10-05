import 'package:bhagavad_gita_app/headers.dart';

class slokacontroller extends ChangeNotifier {
  bool translate = true;
  bool list = true;

  void languageChange() {
    translate = !translate;
    notifyListeners();
  }

  void listchange() {
    list = !list;
    notifyListeners();
  }
}
