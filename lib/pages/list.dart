import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maam_riffat_class_task/model/student.dart';

class Listshow extends StatefulWidget {
  const Listshow({super.key});

  @override
  State<Listshow> createState() => _ListshowState();
}

class _ListshowState extends State<Listshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 200,
        child: ListView.builder(
          itemCount: Users.ulist.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 2,
                  ),
                  Column(
                    children: [
                      Text(Users.ulist[index].name),
                      SizedBox(height: 20),
                      Text(Users.ulist[index].reg)
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
