import 'package:flutter/material.dart';
import 'student_model.dart';
import 'db_helper.dart';

class DBHomePage extends StatefulWidget {
  const DBHomePage({super.key});

  @override
  State<DBHomePage> createState() => _DBHomePageState();
}

class _DBHomePageState extends State<DBHomePage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Future<List<Student>>? students;
  int? studentIDForUpdate;
  String? _studentName;
  bool isUpdate = false;
  DBHelper? dbHelper;
  final _studentNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    refreshStudentList();
  }

  refreshStudentList() {
    setState(
      () {
        students = dbHelper!.getStudent() as Future<List<Student>>;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite CRUD'),
      ),
      body: Column(children: [
        Form(
            key: _formStateKey,
            autovalidateMode: AutovalidateMode.always,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Please Enter Student Name' : null,
                onSaved: (value) => _studentName = value,
                controller: _studentNameController,
                decoration: InputDecoration(
                  labelText: "Student Name",
                  labelStyle: TextStyle(color: Colors.lightBlue),
                ),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                child: Text(
                  (isUpdate ? 'Update' : 'Add'),
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (isUpdate) {
                    if (_formStateKey.currentState!.validate()) {
                      _formStateKey.currentState!.save();
                      dbHelper!
                          .update(Student(studentIDForUpdate, _studentName))
                          .then((data) {
                        setState(() {
                          isUpdate = false;
                        });
                      });
                    }
                  } else {
                    if (_formStateKey.currentState!.validate()) {
                      _formStateKey.currentState!.save();
                      dbHelper!.add(Student(null, _studentName));
                    }
                  }
                  _studentNameController.text = '';
                  refreshStudentList();
                }),
            Padding(padding: EdgeInsets.all(10)),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                child: Text(
                  ("CANCEL"),
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _studentNameController.text = '';
                  setState(() {
                    studentIDForUpdate = null;
                  });
                }),
          ],
        ),
        const Divider(
          height: 5.0,
        ),
        Expanded(
          child: FutureBuilder(
            future: students,
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                return generateList(snapshot.data);
              }
              if (snapshot.data == null || snapshot.data.length == 0) {
                return Text('No Data Found');
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ]),
    );
  }

  SingleChildScrollView generateList(List<Student>? students) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: [
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('Delete'),
                )
              ],
              rows: students!.map((student) => DataRow(cells: [
                    DataCell(
                      Text(student.name),
                      onTap: () {
                        setState(() {
                          isUpdate = true;
                          studentIDForUpdate = student.name;
                        });
                        _studentNameController.text = student.name;
                      },
                    ),
                    DataCell(IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        dbHelper!.delete(student.id);
                        refreshStudentList();
                      },
                    ))
                  ])),
            )));
  }
}
