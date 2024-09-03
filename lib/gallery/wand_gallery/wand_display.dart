import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../../Potter_Details/detailpage.dart';
import '../../screens/mygallery.dart';
import '../../theme_storage/potterthemes.dart';
import '../potion_gallery/potiondisplay.dart';

class MagicWand extends StatefulWidget {
  @override
  const MagicWand({super.key});

  @override
  State<StatefulWidget> createState() {
    return MagicWandState();
  }
}

class MagicWandState extends State<MagicWand> {
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
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Gallery()),
                );
              },
              child: const Icon(Icons.arrow_back),
            ),
            title: const Text('Gallery'),
          ),
          body: FutureBuilder(
              future: futureAlbum,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.008,
                      horizontal: size.width * 0.02,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return snapshot.data[index]['attributes']
                                              ['image'] !=
                                          null &&
                                      snapshot
                                          .data[index]['attributes']['image']
                                          .isNotEmpty
                                  ? FullScreenGallery(
                                      images: snapshot.data[index]['attributes']
                                          ['image'],
                                      initialIndex: index,
                                    )
                                  : Image.asset("assets/images/product1.jpg");
                            }),
                          );
                        },
                        child: Builder(builder: (context) {
                          return snapshot.data[index]['attributes']['image'] !=
                                      null &&
                                  snapshot.data[index]['attributes']['image']
                                      .isNotEmpty
                              ? Image.network(
                                  snapshot.data[index]['attributes']['image'],
                                  fit: BoxFit.cover,
                                )
                              : Image.asset("assets/images/product1.jpg");
                          // return Image.network(
                          //   snapshot.data[index]['attributes']['image']??"",
                          //   fit: BoxFit.cover,
                          // );
                        }),
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              })),
    );
  }}
  
//FullScreen Gallery
  class FullScreenGallery extends StatefulWidget {
  final String images;
  final int initialIndex;

  const FullScreenGallery(
      {super.key, required this.images, this.initialIndex = 0});

  @override
  _FullScreenGalleryState createState() => _FullScreenGalleryState();
}

class _FullScreenGalleryState extends State<FullScreenGallery> {
  late PageController _pageController;
  late Future<dynamic> futureAlbum;
  @override
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    futureAlbum = fetchDetailAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PotionDisplay()),
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text('Gallery'),
        ),
        body: FutureBuilder(
            future: futureAlbum,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return PhotoViewGallery.builder(
                pageController: _pageController,
                itemCount: snapshot.data.length,
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(
                        snapshot.data[index]['attributes']['image']!=null&&
                                  snapshot.data[index]['attributes']['image']
                                      .isNotEmpty
                              ?snapshot.data[index]['attributes']['image']:""),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 2,
                  );
                },
                backgroundDecoration: const BoxDecoration(color: Colors.black),
              );
            }),
      ),
    );
  }
}