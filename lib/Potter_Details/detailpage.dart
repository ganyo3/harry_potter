// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchDetailAlbum() async {
  var result =
      await http.get(Uri.parse('https://api.potterdb.com/v1/characters'));
  return jsonDecode(result.body)['data'];
}

class DetailAlbum {
  final String name;
  final String nationality;
  final String born;
  final String patronus;
  final String image;
  final String species;
  final String jobs;

  const DetailAlbum({
    required this.name,
    required this.nationality,
    required this.born,
    required this.patronus,
    required this.image,
    required this.species,
    required this.jobs,
  });

  factory DetailAlbum.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'name': String name,
        'nationality': String nationality,
        'born': String born,
        'patronus': String patronus,
        'image': String image,
        'species': String species,
        'jobs': String jobs
      } =>
        DetailAlbum(
            name: name,
            nationality: nationality,
            born: born,
            patronus: patronus,
            image: image,
            species: species,
            jobs: jobs),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}
//Fetching data for movies
Future<List<dynamic>> fetchMovie_Details() async {
  var result =
      await http.get(Uri.parse('https://api.potterdb.com/v1/movies'));
  return jsonDecode(result.body)['data'];
}

class Movie_Details {
  final String title;
  final String directors;
  final String rating;
  final String release_date;
  final String poster;
  final String summary;
  final String trailer;
  final String running_time;
  final String screenwriters;
  final String cinematographers;
  final String editors;
  // final String producers;
  final String distributors;
  final String wiki;

  const Movie_Details({
    required this.title,
    required this.directors,
    required this.rating,
    required this.release_date,
    required this.poster,
    required this.summary,
    required this.trailer,
    required this.running_time,
    required this.screenwriters,
    required this.cinematographers,
    required this.editors,
    // required this.producers,
    required this.distributors,
  required this.wiki,
   });

  factory Movie_Details.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'title': String title,
        'directors': String directors,
        'rating': String rating,
        'release_date': String release_date,
        'poster': String poster,
        'summary': String summary,
        'trailer': String trailer,
        'running_time':String running_time,
        'screenwriters':String screenwriters,
        'cinematographers':String cinematographers,
        'editors':String editors,
        // ' producers':String producers,
        ' distributors':String distributors,
       'wiki':String wiki,
      } =>
        Movie_Details(
            title: title,
            directors: directors,
            rating: rating,
            release_date: release_date,
            poster: poster,
            summary: summary,
            trailer: trailer,
           running_time: running_time,
          screenwriters: screenwriters,
          cinematographers : cinematographers,
          editors : editors,
          //  producers: producers,
           distributors: distributors,
          wiki: wiki,
         ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

// // ignore_for_file: camel_case_types

class Character_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Character_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Character_Detail> samples = [
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/potter-hd.jpg",
    ),
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/goblin.jpg",
    ),
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Character_Detail(
      'Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}

class Movie_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Movie_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Movie_Detail> samples = [
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/wallpaper-harry-potter.jpg",
    ),
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/wallpaper-trio.jpg",
    ),
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Movie_Detail(
      'Movie Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}

class Book_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Book_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Book_Detail> samples = [
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/novels.jpg",
    ),
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/magicspell.jpg",
    ),
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Book_Detail(
      'Book Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}

class Wand_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Wand_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Wand_Detail> samples = [
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/potter-magic.jpg",
    ),
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/wand.jpg",
    ),
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Wand_Detail(
      'Wand Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}

class Artifact_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Artifact_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Artifact_Detail> samples = [
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/artifacts.jpg",
    ),
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/golden_snitch.jpg",
    ),
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Artifact_Detail(
      'Artifact Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}

class Hall_Detail {
  String name;
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

  Hall_Detail(
    this.name,
    this.label,
    this.imageUrl,
  );
  //TODO: Add list of Character_Detail here

  static List<Hall_Detail> samples = [
    Hall_Detail(
      'Hall Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/gryffindor.jpg",
    ),
    Hall_Detail(
      'Hall Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/houselogo.jpg",
    ),
    Hall_Detail(
      'Hall Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
    Hall_Detail(
      'Hall Name',
      "Our RESTful API provides a straightforward way to interact with the Potter DB, adhering to the JSON:API and OAS specification. In this section, we'll cover the key aspects of using the REST API, including the available endpoints and how to format your requests and responses.",
      "assets/images/product1.jpg",
    ),
  ];
}
