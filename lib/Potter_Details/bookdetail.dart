import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';
import 'detailpage.dart';

class BookDetail extends StatefulWidget {
  final BookData details;
  const BookDetail({super.key, required this.details});

  @override
  State<StatefulWidget> createState() {
    return BookDetailState();
  }
}

class BookDetailState extends State<BookDetail> {
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
          widget.details.title,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
                padding: EdgeInsets.only(
                  top: size.height * 0.5,
                ),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    image: DecorationImage(
                        image: NetworkImage(widget.details.cover),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "About Novel",
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
                  vertical: size.width * 0.04,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.details.summary),
                    Text(
                      "\nDedicated:",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.dedication),
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
