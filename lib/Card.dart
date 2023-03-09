import 'package:flutter/material.dart';
import 'package:mina/main.dart';

class Cards extends StatelessWidget {
  final Function delete;
    final BestQuets itme;
  Cards({required this.delete,required this.itme});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: EdgeInsets.all(11),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(itme.title,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    delete(itme);
                  },
                ),
                Text(itme.author, style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
