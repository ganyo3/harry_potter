import 'package:flutter/material.dart';
import '../../Potter_Details/detailpage.dart';
import '../../screens/mygallery.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CharacterGallery extends StatefulWidget {
  const CharacterGallery({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return CharacterGalleryState();
  }
}

class CharacterGalleryState extends State<CharacterGallery> {
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
  }
}

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
                MaterialPageRoute(builder: (context) => const CharacterGallery()),
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

// class CharacterGallery extends StatefulWidget {
//   const CharacterGallery({
//     super.key,
//   });

//   @override
//   State<StatefulWidget> createState() {
//     return AllCharactersState();
//   }
// }

// class AllCharactersState extends State<CharacterGallery> {
//   late Future<dynamic> futureAlbum;
//   @override
//   void initState() {
//     futureAlbum = fetchDetailAlbum();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     // var theme2 = PotterTheme.light();
//     // TODO: implement build
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: PotterTheme.dark(),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
//           foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const CharacterPage()),
//               );
//             },
//             child: const Icon(Icons.arrow_back),
//           ),
//           title: Text(
//             "Character Collection",
//             style: Theme.of(context).textTheme.titleLarge,
//           ),
//           centerTitle: true,
//         ),
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Center(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: size.height * 7,
//                     child: FutureBuilder(
//                         future: futureAlbum,
//                         builder:
//                             (BuildContext context, AsyncSnapshot snapshot) {
//                           if (snapshot.hasData) {
//                             return GridView.builder(
//                                 physics: const AlwaysScrollableScrollPhysics(),
//                                 gridDelegate:
//                                     SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 2,
//                                   crossAxisSpacing: 7,
//                                   mainAxisSpacing: size.height * 0.02,
//                                   childAspectRatio: .66,
//                                 ),
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: size.height * .02,
//                                     horizontal: size.width * .02),
//                                 itemCount: snapshot.data.length,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.amber,
//                                       //color: Theme.of(contex).colorScheme.onBackground,
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     child: Column(
//                                       children: [
//                                         Expanded(
//                                           flex: 8,
//                                           child: Container(
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     const BorderRadius.only(
//                                                   topLeft: Radius.circular(20),
//                                                   topRight: Radius.circular(20),
//                                                 ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(snapshot
//                                                                   .data[index]
//                                                               ['attributes']
//                                                           ['image'] ??
//                                                       const AssetImage(
//                                                               'assets/images/goblin.jpg')
//                                                           .toString()),
//                                                   // const AssetImage('assets/images/goblin.jpg')
//                                                   fit: BoxFit.fill,
//                                                 )),
//                                           ),
//                                         ),
//                                         Expanded(
//                                           flex: 2,
//                                           child: Text(
//                                             snapshot.data[index]['attributes']
//                                                     ['name'] ??
//                                                 'n/a',
//                                             softWrap: true,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   );
//                                 });
//                           } else {
//                             return const Center(
//                                 child: CircularProgressIndicator());
//                           }
//                         }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
