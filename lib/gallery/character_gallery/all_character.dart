import 'package:flutter/material.dart';
import 'package:harry_potter/gallery/character_gallery/character_page.dart';
import '../../Potter_Details/detailpage.dart';
import '../../theme_storage/potterthemes.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';






// class AllCharacters extends StatefulWidget {
//   const AllCharacters({
//     super.key,
//   });

//   @override
//   State<StatefulWidget> createState() {
//     return AllCharactersState();
//   }
// }

// class AllCharactersState extends State<AllCharacters> {
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
//                                                      topLeft: Radius.circular(20),
//                                                      topRight: Radius.circular(20),
//                                                       ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(
//                                                       snapshot.data[index]
//                                                                   ['attributes']
//                                                               ['image'] ?? const AssetImage('assets/images/goblin.jpg').toString()),
//                                                               // const AssetImage('assets/images/goblin.jpg')
//                                                   fit: BoxFit.fill,
//                                                 )),
//                                                ),
//                                         ),
//                                         Expanded(
//                                           flex: 2,
//                                           child: Text(
//                                             snapshot.data[index]['attributes']
//                                                     ['name'] ??
//                                                 'n/a',
//                                           softWrap:true,
//                                           ),                                          
//                                         )
//                                       ],
//                                     ),
//                                   );
//                                 });
//                           } else {
//                             return const Center(child: CircularProgressIndicator());
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
