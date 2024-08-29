import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';
import '../theme_storage/potterthemes.dart';

class HallDetail extends StatefulWidget {
  final Hall_Detail details;
  const HallDetail({super.key, required this.details});

  @override
  State<StatefulWidget> createState() {
    return HallDetailState();
  }
}

class HallDetailState extends State<HallDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(widget.details.name),
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
                    decoration: BoxDecoration(
                        borderRadius:const BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage(widget.details.imageUrl),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Text(
                     widget.details.name,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "About Hall",
                style: theme2.textTheme.titleLarge,
              ),
              Divider(
                color: Colors.black,
                indent: size.width * 0.045,
                endIndent: size.width * 0.045,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Text(widget.details.label),
              )
            ],
          ),
        ),
      )),
    );
  }
}
