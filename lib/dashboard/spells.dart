import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Spells extends StatefulWidget {
  @override
  const Spells({super.key});

  @override
  State<StatefulWidget> createState() {
    return SpellsState();
  }
}

class SpellsState extends State<Spells> {
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
              opacity: 0.8,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: theme2.colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        right: size.width * 0.15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onBackground,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "Spell Name",
                                        style: theme2.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.2,
                                        left: size.width * 0.02,
                                      ),
                                      child: Text(
                                        'Spell details',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
