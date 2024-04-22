import 'package:flutter/material.dart';
import '../potterthemes.dart';

class MovieDetail extends StatefulWidget {
  @override
  const MovieDetail({super.key});

  @override
  State<StatefulWidget> createState() {
    return MovieDetailState();
  }
}

class MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: const Text(
          "Character Details",
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: size.height * 0.55,
                    ),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/wallpaper-harry-potter-1920x1080-full-hd-2k-picture-image.jpg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Column(
                      children: [
                        Text(
                          "Name of Movie",
                          style: theme.textTheme.displayMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * 0.18),
                          child: Text(
                            "Date Released",
                            style: theme2.textTheme.displaySmall,
                          ),
                        ),
                        // Text("Position", style: theme2.textTheme.displaySmall,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "About Movie",
                style: theme2.textTheme.titleLarge,
              ),
              Divider(
                color: Colors.black,
                indent: size.width*0.045,
                endIndent: size.width*0.045,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: const Text(
                    "Monitor search engine rankings effectively, observing SERP features such as snippets and sitelinks, along with essential details like meta titles and descriptions.\t\nExplore diverse image search results, including thumbnail visuals, source URLs, and image context for enhanced visual search analysis."),
              )
            ],
          ),
        ),
      )),
    );
  }
}
