import 'package:flutter/material.dart';

import '../../Potter_Details/detailpage.dart';
import '../../Potter_Details/moviedetail.dart';
import '../../theme_storage/potterthemes.dart';

class Movies extends StatefulWidget {
  @override
  const Movies({super.key});

  @override
  State<StatefulWidget> createState() {
    return MoviesState();
  }
}

class MoviesState extends State<Movies> {
  late Future<dynamic> futureMovie;
  @override
  void initState() {
    futureMovie = fetchMovie_Details();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    //var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.appBarTheme.backgroundColor,
          foregroundColor: theme.appBarTheme.foregroundColor,
          title: Text(
            "Movie Collection",
            style: theme.textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: DecoratedBox(
            decoration: const BoxDecoration(
              // Image set to background of the body
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/potter-portrait-display.jpg"),
                  fit: BoxFit.fill),
            ),
            child: SafeArea(
                child: FutureBuilder(
              future: futureMovie,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.005,
                            // vertical: size.width * 0.005,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                               // color: theme2.colorScheme.onBackground,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.3,
                                    // bottom: size.height * 0.00,
                                    right: size.width * 0.45,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          snapshot.data[index]['attributes']
                                                  ['poster'] ??
                                              'n/a',
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: size.height * 0.1,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              snapshot.data[index]['attributes']
                                                      ['title'] ??
                                                  'n/a',
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: size.width * 0.25),
                                              child: Text(
                                                'Director:${snapshot.data[index]['attributes']['directors'[0]] ?? 'n/a'}'
                                                "\n"
                                                'Rate:${snapshot.data[index]['attributes']['rating'] ?? 'n/a'}',
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.145),
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
                                                      builder: (context) =>
                                                          MovieDetail(
                                                              details:
                                                                  Movie_Details(
                                                            title: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    ['title'] ??
                                                                'n/a',
                                                            directors: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'directors'[
                                                                        0]] ??
                                                                'n/a',
                                                            rating: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'rating'] ??
                                                                'n/a',
                                                            release_date: snapshot
                                                                            .data[index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'release_date'] ??
                                                                'n/a',
                                                            poster: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'poster'] ??
                                                                'n/a',
                                                            summary: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'summary'] ??
                                                                'n/a',
                                                            trailer: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'trailer'] ??
                                                                'n/a',
                                                            running_time: snapshot
                                                                            .data[index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'running_time'] ??
                                                                'n/a',
                                                            screenwriters: snapshot
                                                                            .data[index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'screenwriters'[
                                                                        0]] ??
                                                                'n/a',
                                                            cinematographers:
                                                                snapshot.data[index]
                                                                            [
                                                                            'attributes']
                                                                        [
                                                                        'cinematographers'[
                                                                            0]] ??
                                                                    'n/a',
                                                            editors: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    ['editors'[
                                                                        0]] ??
                                                                'n/a',
                                                            // producers: snapshot.data[index]['attributes']['producers'[0][1][2]]?? 'n/a',
                                                            distributors: snapshot
                                                                            .data[index]
                                                                        [
                                                                        'attributes']
                                                                    [
                                                                    'distributors'[
                                                                        0]] ??
                                                                'n/a',
                                                            wiki: snapshot.data[
                                                                            index]
                                                                        [
                                                                        'attributes']
                                                                    ['wiki'] ??
                                                                'n/a',
                                                          ))));
                                            },
                                            label: const Text(
                                              'Movie Details',
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
              },
            ))));
  }
}
