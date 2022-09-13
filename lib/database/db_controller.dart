import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbController {
  DbController._();

  late Database _database;
  static DbController? _instance;

  factory DbController() {
    return _instance ??= DbController._();
  }

  Database get database => _database;

  Future<void> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_db.sql');
    _database = await openDatabase(
      path,
      version: 1,
      onOpen: (Database database) {},
      onCreate: (Database database, int version) async {
        //TODO: Create tables (users, products, cart) USING SQL
        await database.execute('CREATE TABLE users ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'email TEXT NOT NULL,'
            'password TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'mobile TEXT NOT NULL,'
             'gender TEXT NOT NULL'
            ')');

        await database.execute('CREATE TABLE freelancer_user ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'email TEXT NOT NULL,'
            'password TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'mobile TEXT NOT NULL,'
            'gender TEXT NOT NULL,'
            'skill_id INTEGER NOT NULL,'
            'experience_level TEXT NOT NULL,'

            'FOREIGN KEY (skill_id) references skills(id)'
            ')');


        await database.execute('CREATE TABLE skills ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'title TEXT NOT NULL '

            ')');

        await database.execute('CREATE TABLE profiles ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'info TEXT NOT NULL,'
            'work_link TEXT NOT NULL,'
            'image Text NOT NULL,'
            'whatsapp_link Text NOT NULL,'
            'linkedin_link Text NOT NULL,'
            'facebook_link Text NOT NULL,'
            'upwork_link Text NOT NULL,'
            'mostaql_link Text NOT NULL,'
            'khamsat_link Text NOT NULL,'
            'freelanc_link Text NOT NULL,'
            'teeter_link Text NOT NULL,'
            'freelancer_id INTEGER NOT NULL,'
            'FOREIGN KEY (freelancer_id) references freelancers(id)'

            ')');

        await database.execute('CREATE TABLE admin ('
            'email TEXT NOT NULL ,'
            'password TEXT NOT NULL'

            ')');

        await database.execute('CREATE TABLE courses ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'number_of_training_hours INTEGER NOT NULL,'
            'coach_name TEXT NOT NULL,'
            'info TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'link TEXT NOT NULL'

            ')');
        await database.execute('CREATE TABLE ads ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'date TEXT NOT NULL,'
          'start_hours TEXT NOT NULL, '
            'description TEXT NOT NULL,'
            'image TEXT NOT NULL,'
            'place TEXT NOT NULL,'
            'executor TEXT NOT NULL,'
            'link TEXT NOT NULL,'
            'duration TEXT NOT NULL'

            ')');

        await database.execute('CREATE TABLE blogs ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'name TEXT NOT NULL,'
            'info TEXT NOT NULL,'
            'image TEXT NOT NULL'

            ')');


      },
      onUpgrade: (Database database, int oldVersion, int newVersion) {},
      onDowngrade: (Database database, int oldVersion, int newVersion) {},
    );
  }
}