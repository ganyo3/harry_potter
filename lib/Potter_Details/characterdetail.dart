import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/detailpage.dart';
import '../theme_storage/potterthemes.dart';

class CharacterDetail extends StatefulWidget {
  final DetailAlbum details;
  const CharacterDetail({
    super.key,
    required this.details,
  });

  @override
  State<StatefulWidget> createState() {
    return CharacterDetailState();
  }
}

class CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(100)),
                        image: DecorationImage(
                            image: NetworkImage(widget.details.image),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Text(
                      'Blood Status: ${widget.details.blood_status}\t${widget.details.species}\n Patronus: ${widget.details.patronus}',
                      style: theme2.textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "About Character",
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
                        '${widget.details.name} was born ${widget.details.born}'),
                    Text(
                      "Died",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.died),
                    Text(
                      "Family Members",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(
                      "Wikipedia",
                      style: theme2.textTheme.bodyLarge,
                    ),
                    Text(widget.details.wiki),
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
