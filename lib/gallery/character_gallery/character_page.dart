import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/gallery/character_gallery/all_character.dart';
import '../../Potter_Details/detailpage.dart';
import '../../screens/mygallery.dart';
import '../../theme_storage/potterthemes.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return CharacterPageState();
  }
}

class CharacterPageState extends State<CharacterPage> {
  late Future<dynamic> futureAlbum;
  @override
  void initState() {
    futureAlbum = fetchDetailAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var theme2 = PotterTheme.light();
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PotterTheme.dark(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gallery()),
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Character Collection",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  carousel(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Swipe Left"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AllCharacters()));
                            },
                            child: const Text("See All Characters"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  carousel() {
    var size = MediaQuery.of(context).size;
    // final String images = NetworkImage(snapshot.data[index]['attributes']['image']);
    final List<String> images = [
      'assets/images/potter.jpg',
      'assets/images/voldemort.jpg',
      'assets/images/snape.jpg',
      'assets/images/potter_vs_voldemort.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: size.height * 0.8,
        enlargeCenterPage: false,
        // aspectRatio: 16/9,
        viewportFraction: 1,
      ),
      items: images.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: size.height * 0.5,
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.015,
                horizontal: size.width * 0.025,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill)),
            );
          },
        );
      }).toList(),
    );
  }
}
