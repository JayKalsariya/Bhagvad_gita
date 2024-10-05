import 'package:bhagavad_gita_app/controller/data.dart';
import 'package:bhagavad_gita_app/headers.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4E000E),
        foregroundColor: Colors.white,
        title: Text(
          "श्लोक:${data["verse_number"]}",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<slokacontroller>(context, listen: false)
                    .languageChange();
              },
              icon: const Icon(Icons.translate))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<slokacontroller>(builder: (context, Provider, child) {
          return Container(
            padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/page.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SelectableText("श्लोक:${data["verse_number"]}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                SelectableText(
                    "${Provider.translate ? data["text"] : data["transliteration"]}",
                    style: const TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
