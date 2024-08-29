import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';
import '../theme_storage/potterthemes.dart';

class WandDetail extends StatefulWidget {
  final Wand_Detail detail;
  const WandDetail({super.key, required this.detail});

  @override
  State<StatefulWidget> createState() {
    return WandDetailState();
  }
}

class WandDetailState extends State<WandDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(widget.detail.name),
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
                            bottomRight: Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage(widget.detail.imageUrl),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Text(
                     widget.detail.name,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "About Wand",
                style: theme2.textTheme.titleLarge,
              ),
              Divider(
                color: Colors.black,
                indent: size.width * 0.045,
                endIndent: size.width * 0.045,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child:Text(widget.detail.label),
              )
            ],
          ),
        ),
      )),
    );
  }
}
