// import 'dart:io';
// import 'package:path_provider/path_provider.dart';

// class DataStoragePrefs {
//   Future<String> get localPath async {
//     final directory = await getApplicationDocumentsDirectory();
//     return directory.path;
//   }

// //getting the local path
//   Future<File> get localFile async {
//     final path = await localPath;
//     return File('$path/hpdoc.txt');
//   }

//   Future<String> readData() async {
//     try {
//       final file = await localFile;
//       //reading file
//       final contents = file.readAsString();
//       return contents;
//     } catch (e) {
//       return 'Oops';
//     }
//   }

//   Future<File> writeData(futureAlbum) async {
//     final file = await localFile;
//     //writing file
//     return file.writeAsString('$futureAlbum');
//   }
// }
