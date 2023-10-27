import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/player_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    // Diğer ayarlar
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> categories = [
    Category(name: 'Kategori 1', youtubeLink: 'youtube.com/link1'),
    Category(name: 'Kategori 2', youtubeLink: 'youtube.com/link2'),
    Category(name: 'Kategori 3', youtubeLink: 'youtube.com/link3'),
    // Diğer kategorileri buraya ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Player Project",
        ),
        backgroundColor: Color.fromARGB(255, 13, 104, 5),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 81, 128)),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: ListTile(
                title: Text(
                  category.name,
                  style: TextStyle(fontFamily: 'Times New Roman'),
                ),
                onTap: () {
                  // Kategoriye tıklandığında ilgili YouTube linkini göstermek için bir sayfa açabilirsiniz
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          YouTubePlayerPage(category.youtubeLink),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String youtubeLink;

  Category({required this.name, required this.youtubeLink});
}
