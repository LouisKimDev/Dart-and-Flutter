import 'package:flutter/material.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider_windows/path_provider_windows.dart';
import 'student_model.dart';

class DBHelper {
  static Database? _db;

  Future<Database> get db async {
    if (db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    // 디렉토리랑 student.db를 결합해서 한 스트링으로 만듦
    String path = join(documentDirectory.path 'student.db');
    var db = await openDatabase(path, verseion: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
    // db가 만들어진 뒤 student 테이블을 만듦
      .execute('CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT)');
  }
  // CURD: Create/add, delete, update, read/get
  // Create/add
  Future<Student> add(Student student) async {
    var dbClient = await db; // 이부분을 get db()로 바꿔서 오기
    student.id = await dbClient!.insert('student', student.toMap());
    return student;
  }

    // Update
  Future<int> update(Student student) async{
    var dbClient = await db;
    return await dbClient.update(
      'student',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  // Read/get
  Future<List<Student>> getStudent() async{
    var dbClient = await db;
    List<Map> maps = await dbClient!.query('student', columns: ['id', 'name']);
    List<Student> students = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++){
        students.add(Student.fromMap(maps[i]));
      }
    }
    return students;
  }

  // Delete
  Future<int> delete(int id) async{
    var dbClient = await db;
    return await dbClient.delete(
      'student',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Close
  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
  
}

