import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maam_riffat_class_task/model/student.dart';
import 'package:maam_riffat_class_task/pages/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name = TextEditingController();
  TextEditingController reg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          TextFormField(
            controller: name,
            decoration: InputDecoration(
              labelText: "Enter name",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderSide: new BorderSide(),
              ),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            controller: reg,
            decoration: InputDecoration(
              labelText: "Enter reg",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderSide: new BorderSide(),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Users.ulist.add(User(name: name.text, reg: reg.text));
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Listshow();
                  },
                ));
              },
              child: Text("Submit"))
        ]),
      ),
    );
  }
}
