import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  int selectedIndex = 0;
  final List<String> catelog = ['Messages', 'Status', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 65,
       color: Colors.redAccent,
      child: ListView.builder(
        itemCount: catelog.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int Index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = Index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10
            ),
              child: Text(
                catelog[Index],
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Index==selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.2
                ),
              )
            ),
          );
        },

      ),

    );
  }
}
