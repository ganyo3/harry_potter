import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';
import '../potterthemes.dart';

class MovieDetail extends StatefulWidget {
  final Movie_Details details;
  const MovieDetail({super.key, required this.details});

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
        title: Text(
          widget.details.title,
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
                      top: size.height * 0.5,
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              widget.details.poster,
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 0.05,
                    left: size.width*0.1,
                    child: Text(
                      'Date: ${widget.details.release_date} \nRun-Time: ${widget.details.running_time}',
                      style: theme2.textTheme.bodyLarge,
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
                      Text(
                        "Summary",
                        style: theme2.textTheme.bodyLarge,
                      ),
                      Text(
                        '${widget.details.summary}\n',
                      ),
                      Text(
                        "Screen writer",
                        style: theme2.textTheme.bodyLarge,
                      ),
                      Text(
                        '${widget.details.screenwriters}\n',
                      ),
                      Text(
                        "Cinematographers",
                        style: theme2.textTheme.bodyLarge,
                      ),
                      Text(
                       '${ widget.details.cinematographers}\n',
                      ),
                      Text(
                        "Editors",
                        style: theme2.textTheme.bodyLarge,
                      ),
                      Text(
                        '${widget.details.editors}\n',
                      ),
                      Text(
                        "Distributors",
                        style: theme2.textTheme.bodyLarge,
                      ),
                      Text(
                       '${ widget.details.distributors}\n',
                      ),
                      Text(
                        "Trailer",
                        style: theme2.textTheme.bodyLarge,
                      ),
                       TextButton(onPressed:(){}, 
                      child: Text(widget.details.trailer)),
                      Text(
                        "Wikipedia",
                        style: theme2.textTheme.bodyLarge,
                      ),
                     TextButton(onPressed:(){}, 
                      child: Text(widget.details.wiki))
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
