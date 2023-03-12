import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';


main() {
  WidgetsFlutterBinding.ensureInitialized();
  Sqflite_Demo();
}

class Sqflite_Demo extends StatefulWidget {
  const Sqflite_Demo({Key? key}) : super(key: key);

  @override
  State<Sqflite_Demo> createState() => _Sqflite_DemoState();
}

class _Sqflite_DemoState extends State<Sqflite_Demo> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      title: TextField(
      controller: textController,
    )),
      body: Center(
        child: FutureBuilder<List<Grocery>>(
          future: DatabaseHelper.instance.getGroceries(),
          builder: (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: Text('Loading...'));
            }
              return snapshot.data!.isEmpty
                ? Center(child: Text('No Groceries in List'))
                : ListView(
                children: snapshot.data!.map((grocery) {
                  return Center(
                    child: ListTile(
                      title: Text(grocery.name),
                ),
              );
            }).toList(),
          );
        }),
      ),

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.save),
        onPressed: () {
          print(textController.text);
          }
        ),
      )
    );
    }
  }

  class Grocery {
    final int? id;
    final String name;


    Grocery({this.id, required this.name});

    factory Grocery.fromMap(Map<String, dynamic> json) =>
      Grocery(
      id: json['id'],
      name: json['name'],
    );

    Map<String, dynamic> toMap() {
      return {
        'id': id,
        'name': name,
        };
     }
    }

  class DatabaseHelper {

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, 'groceries.db');
  return await openDatabase(
  path,
  version: 1,
  onCreate: _onCreate,
  );
  }

  Future _onCreate(Database db, int version) async {
  await db.execute(
  '''
            CREATE TABLE groceries(
              id INTEGER PRIMARY KEY,
              name TEXT
          ''');
  }

  Future<List<Grocery>> getGroceries() async {
  Database db = await instance.database;
  var groceries = await db.query('groceries', orderBy: 'name');
  List<Grocery> groceryList = groceries.isNotEmpty ? groceries.map((c) =>
  Grocery.fromMap(c)).toList() : [];
  return groceryList;
  }
  }






