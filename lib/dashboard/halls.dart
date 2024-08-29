import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';
import '../Potter_Details/bookdetail.dart';
import '../Potter_Details/detailpage.dart';

class Halls extends StatefulWidget {
  @override
  const Halls({super.key});

  @override
  State<StatefulWidget> createState() {
    return HallsState();
  }
}

class HallsState extends State<Halls> {
  var theme = PotterTheme.dark();
  var theme2 = PotterTheme.light();

  late Future<dynamic> futureBookData;
  @override
  void initState() {
    // TODO: implement initState
    futureBookData = fetchBookData();
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Hogwarts Halls",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/houselogo.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: FutureBuilder(
              future: futureBookData,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.005,
                            vertical: size.width * 0.005,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                               // color: theme2.colorScheme.onBackground,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.33,
                                    right: size.width * 0.45,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            snapshot.data[index]['attributes']
                                                ['cover'],
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.025),
                                        child: Text(
                                          '${snapshot.data[index]['attributes']['title']}.\n\nBy: ${snapshot.data[index]['attributes']['author']}\nDate: ${snapshot.data[index]['attributes']['release_date']}\nPages: ${snapshot.data[index]['attributes']['pages']}',
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.12,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.15),
                                        child: SizedBox(
                                          width: size.width * 0.35,
                                          height: size.width * 0.1,
                                          child: FloatingActionButton.extended(
                                            shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            // backgroundColor:
                                            //     theme.colorScheme.onBackground,
                                            extendedPadding:
                                                const EdgeInsets.all(55),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => BookDetail(
                                                      details: BookData(
                                                          cover: snapshot.data[index]
                                                                  ['attributes']
                                                              ['cover'],
                                                          title: snapshot.data[index]
                                                                  ['attributes']
                                                              ['title'],
                                                          author: snapshot.data[index]
                                                                  ['attributes']
                                                              ['author'],
                                                          release_date: snapshot.data[index]
                                                                  ['attributes']
                                                              ['release_date'],
                                                          pages: snapshot.data[index]
                                                                  ['attributes']
                                                              ['pages'],
                                                          summary: snapshot.data[index]['attributes']['summary'],
                                                          dedication: snapshot.data[index]['attributes']['summary'],
                                                          wiki: snapshot.data[index]['attributes']['wiki'])),
                                                ),
                                              );
                                            },
                                            label: const Text(
                                              'View More',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ),
    );
  }
}
