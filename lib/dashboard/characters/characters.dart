// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/characterdetail.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';

import '../../theme_storage/potterthemes.dart';
// import 'package:sizer/sizer.dart';
// import '../local_path_storage.dart';

class Character extends StatefulWidget {
  // final DataStoragePrefs storage;
  const Character({
    super.key,
  }); //required this.storage});

  @override
  State<StatefulWidget> createState() {
    return CharacterState();
  }
}

class CharacterState extends State<Character> {
  late Future<dynamic> futureAlbum;
  @override
  void initState() {
    futureAlbum = fetchDetailAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    // var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Characters",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-portrait-display.jpg"),
              opacity: 0.8,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              return Future<void>.delayed(const Duration(seconds: 3));
            },
            child: FutureBuilder(
              future: futureAlbum,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 2,
                                vertical: size.height * 05),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: size.height * 5,
                                      horizontal: size.width * 15,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      image: DecorationImage(
                                          alignment: Alignment.centerLeft,
                                          image: NetworkImage(
                                            snapshot.data[index]['attributes']
                                                    ['image'] ??
                                                'assets/images/product1.jpg',
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 02,
                                  ),
                                  Flexible(
                                    child: Column(
                                      children: [
                                        Text(snapshot.data[index]['attributes']
                                                ['name'] ??
                                            'n/a'),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 005),
                                          child: Text(snapshot.data[index]
                                                      ['attributes']
                                                  ['nationality'] ??
                                              'n/a \n${snapshot.data[index]['attributes']['jobs'[0]] ?? 'n/a'}'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CharacterDetail(
                                                details: DetailAlbum(
                                              name: snapshot.data[index]
                                                      ['attributes']['name'] ??
                                                  'n/a',
                                              nationality: snapshot.data[index]
                                                          ['attributes']
                                                      ['nationality'] ??
                                                  'n/a',
                                              born: snapshot.data[index]
                                                      ['attributes']['born'] ??
                                                  'n/a',
                                              image: snapshot.data[index]
                                                      ['attributes']['image'] ??
                                                  'n/a',
                                              patronus: snapshot.data[index]
                                                          ['attributes']
                                                      ['patronus'] ??
                                                  'n/a',
                                              species: snapshot.data[index]
                                                          ['attributes']
                                                      ['species'] ??
                                                  'n/a',
                                              jobs: snapshot.data[index]
                                                          ['attributes']
                                                      ['jobs'[0]] ??
                                                  'n/a',
                                              blood_status: snapshot.data[index]
                                                          ['attributes']
                                                      ['blood_status'] ??
                                                  'n/a',
                                              died: snapshot.data[index]
                                                      ['attributes']['died'] ??
                                                  'n/a',
                                              // family_members:snapshot.data[index]
                                              //         ['attributes']['family_members'] ??
                                              //     'n/a',
                                              wiki: snapshot.data[index]
                                                      ['attributes']['wiki'] ??
                                                  'n/a',
                                            ))));
                              },
                            ),
                          )
                        ],
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
