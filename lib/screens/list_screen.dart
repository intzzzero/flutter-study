import 'package:daily_cats_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

import '../models/cat.dart';

final List<Cat> cats = [
  Cat(
    id: "0",
    name: "고양이1",
    title: "고양이1",
    link: "assets/images/cat7.jpeg",
    likeCount: 13,
    replyCount: 3,
    created: DateTime(2024, 01, 08, 11, 32, 564),
  ),
  Cat(
    id: "1",
    name: "고양이2",
    title: "고양이2",
    link: "assets/images/cat8.jpeg",
    likeCount: 5,
    replyCount: 0,
    created: DateTime(2024, 01, 08, 19, 23, 894),
  ),
  Cat(
    id: "2",
    name: "고양이3",
    title: "고양이3",
    link: "assets/images/cat10.jpeg",
    likeCount: 50,
    replyCount: 12,
    created: DateTime(2024, 01, 09, 10, 05, 784),
  ),
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Daily Cats"), actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ]),
        body: GridView.builder(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0),
            itemCount: cats.length,
            itemBuilder: (_, int index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(cat: cats[index])));
                  },
                  child: Image.asset(cats[index].link, fit: BoxFit.cover),
                )));
  }
}
