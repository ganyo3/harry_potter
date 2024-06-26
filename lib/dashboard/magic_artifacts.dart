import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/artifactdetail.dart';
import 'package:harry_potter/potterthemes.dart';

import '../Potter_Details/detailpage.dart';

class Artifacts extends StatefulWidget {
  @override
  const Artifacts({super.key});

  @override
  State<StatefulWidget> createState() {
    return ArtifactsState();
  }
}

class ArtifactsState extends State<Artifacts> {
  Widget buildDetailCard(Artifact_Detail details) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.005,
          vertical: size.width * 0.005,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: theme2.colorScheme.onBackground,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: size.height * 0.3,
                  right: size.width * 0.45,
                ),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(
                          details.imageUrl,
                        ),
                        fit: BoxFit.fill)),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height * 0.2,
                      left: size.height * 0.01,
                    ),
                    child: Text(
                      'Movie Name',
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    child: SizedBox(
                      width: size.width * 0.45,
                      height: size.width * 0.1,
                      child: FloatingActionButton.extended(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: theme.colorScheme.onBackground,
                        extendedPadding: const EdgeInsets.all(55),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ArtifactDetail(details: details)),
                          );
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
              )
            ],
          ),
        ),
      ),
    );
  }
@override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
          child: ListView.builder(
              itemCount: Artifact_Detail.samples.length,
              itemBuilder: (BuildContext context, index) {
                //returning recipe cards
                return buildDetailCard(Artifact_Detail.samples[index]);
              },
            ),
        ),
      ),
    );
  }
}
