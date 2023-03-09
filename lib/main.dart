import 'package:flutter/material.dart';
import 'package:mina/Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quotes(),
    );
  }
}

class BestQuets {
  String title;
  String author;
  BestQuets({required this.title, required this.author});
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);
  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List AllQuets = [
    BestQuets(author: "MinaFlutter ", title: "رايق من نوعة فاخر 🔥"),
    BestQuets(
        author: "MinaFlutter ", title: "العقل السليم في البعد عن الحريم 😂"),
    BestQuets(
        author: "MinaAltyp ",
        title: "كُتر التفكير فى الى ضااااع هيعمل لك صادااااع 😉"),
    BestQuets(
        author: "Altyp", title: "فرح نفسك بنفسك ومتستناش حاجة حلوة من حد  ✋ "),
    BestQuets(author: "Altyp", title: "فرح نفسك بنفسك وى متفكرش فى حد   ✋ "),
    BestQuets(
        author: "Altyp", title: "فرح نفسك بنفسك ومتستناش حاجة حلوة من حد  ✋ "),
  ];

  delete( BestQuets itme) {
    setState(() {
      AllQuets.remove(itme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quets',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...AllQuets.map((itme) => Cards(
                   itme:itme,
                  delete:delete,
                 
                )).toList(),
            // []
            //Cards(),
            // Cards(),
            // Cards(),
            // Cards(),
          ],
        ),
      ),
    );
  }
}
