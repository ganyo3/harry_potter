import 'package:flutter/material.dart';
import '../Potter_Details/detailpage.dart';
import '../theme_storage/potterthemes.dart';

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
    var theme = PotterTheme.dark();
    // var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Character Collection",
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Regular students
                  SizedBox(
                    height: size.height * 0.895,
                    child: FutureBuilder(
                        future: futureAlbum,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return GridView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 7,
                                  mainAxisSpacing: size.height * 0.02,
                                  childAspectRatio: .66,
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * .02,
                                    horizontal: size.width * .02),
                                itemCount: snapshot.data.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                      //color: theme.colorScheme.onBackground,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(50),
                                                  topRight: Radius.circular(50),
                                                ),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      snapshot.data[index]
                                                                  ['attributes']
                                                              ['image'] ??
                                                          {
                                                            'assets/images/goblin.jpg'
                                                          }),
                                                  fit: BoxFit.fill,
                                                )),
                                            // child: FadeInImage(
                                            //   image: NetworkImage(
                                            //      snapshot.data[index]['attributes']['image']??''),
                                            //   placeholder: const AssetImage(
                                            //       "assets/images/product1.jpg"),
                                            //   imageErrorBuilder:
                                            //       (context, error, stackTrace) {
                                            //     return Image.asset(
                                            //         'assets/images/product1.jpg',
                                            //         fit: BoxFit.fill);
                                            //   },
                                            //   fit: BoxFit.fill,
                                            // ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            snapshot.data[index]['attributes']
                                                    ['name'] ??
                                                'n/a',
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
