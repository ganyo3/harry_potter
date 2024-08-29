import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';
import 'package:harry_potter/Potter_Details/spelldetail.dart';
import '../theme_storage/potterthemes.dart';

class Spells extends StatefulWidget {
  @override
  const Spells({super.key});

  @override
  State<StatefulWidget> createState() {
    return SpellsState();
  }
}

class SpellsState extends State<Spells> {
  late Future<List<dynamic>> futureSpellData;
  @override
  void initState() {
    futureSpellData = fetchSpellData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Magic Spells",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/HD-wallpaper-harry-potter-unlock-black-dark-gold-good-hagwarts-harry-potter-magic-spell-smile-wands.jpg"),
              opacity: 0.6,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.02,
              ),
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01,
              ),
              child: FutureBuilder(
                  future: futureSpellData,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, int index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            snapshot.data[index]['attributes']
                                                    ['image'] ??
                                                'n/a'),
                                      ),
                                      Flexible(
                                        child: TextButton(
                                          child: Text(
                                            'Name: ${snapshot.data[index]['attributes']['name'] ?? 'n/a'}\nCreator: ${snapshot.data[index]['attributes']['creator'] ?? 'n/a'}',
                                            style: theme2.textTheme.bodyLarge,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SpellDetail(
                                                            details: SpellData(
                                                                image: snapshot.data[index]['attributes']['image']?? 'n/a',
                                                                name: snapshot.data[index]['attributes']['name']?? 'n/a',
                                                                creator:
                                                                   snapshot.data[index]['attributes']['creator']?? 'n/a',
                                                                category:
                                                                    snapshot.data[index]['attributes']['category']?? 'n/a',
                                                                light:snapshot.data[index]['attributes']['light']?? 'n/a',
                                                                incantation:
                                                                    snapshot.data[index]['attributes']['incantation']?? 'n/a',
                                                                effect: snapshot.data[index]['attributes']['effect']?? 'n/a',
                                                                hand: snapshot.data[index]['attributes']['hand']?? 'n/a',
                                                                wiki:snapshot.data[index]['attributes']['wiki']?? 'n/a'))));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
