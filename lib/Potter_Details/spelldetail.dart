import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';
import 'detailpage.dart';

class SpellDetail extends StatefulWidget {
  final SpellData details;
  const SpellDetail({super.key, required this.details});

  @override
  State<StatefulWidget> createState() {
    return SpellDetailState();
  }
}

class SpellDetailState extends State<SpellDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          widget.details.name,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(               
                padding: EdgeInsets.only(
                  top: size.height * 0.5,
                ),
                decoration: BoxDecoration(                   
                    image: DecorationImage(
                        image: NetworkImage(widget.details.image),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "ABOUT SPELL",
                style: theme2.textTheme.titleLarge,
              ),
              Divider(
                color: Colors.black,
                indent: size.width * 0.045,
                endIndent: size.width * 0.045,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.04,
               ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\nCategory",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text('${widget.details.light}\t${widget.details.category}'),
                    Text(
                      "\nIncantation:",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.incantation),
                    Text(
                      "\nEffect:",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.effect),
                    Text(
                      "\nHand Direction:",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.hand),
                    Text(
                      "\nWikipedia:",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(widget.details.wiki),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
