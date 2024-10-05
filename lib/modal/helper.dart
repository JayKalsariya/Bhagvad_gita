import 'package:bhagavad_gita_app/headers.dart';

class JsonHelper {
  JsonHelper._();
  static final JsonHelper jsonHelper = JsonHelper._();

  Future<List> getSloka() async {
    String data = await rootBundle.loadString('assets/Json/bhagvat_gita.json');

    List allsloka = jsonDecode(data);

    return allsloka;
  }

  Future<List> getSloka1() async {
    String data = await rootBundle.loadString('assets/Json/sloka_gita.json');

    List allsloka1 = jsonDecode(data);

    return allsloka1;
  }
}
