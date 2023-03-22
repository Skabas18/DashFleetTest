import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/card.dart';
import '../widgets/textappbar.dart';

enum SampleItem { ruta1, ruta2, ruta3, ruta4, ruta5 }

class CardsPages extends StatefulWidget {
  const CardsPages({super.key});

  @override
  State<CardsPages> createState() => _CardsPagesState();
}

class _CardsPagesState extends State<CardsPages> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: Column(
              children: <Widget>[TextAppbar('AMB APP'), TextAppbar('Login')],
            ),
            backgroundColor: Colors.green,
            toolbarHeight: 80,
            // ignore: prefer_const_constructors
            leading: CircleAvatar(
              backgroundImage: const AssetImage('assets/User.jpg'),
            ),
            actions: <Widget>[
              const Padding(padding: EdgeInsets.all(5)),
              PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                icon: const Icon(Icons.menu),
                onSelected: (SampleItem item) {
                  setState(() {
                    selectedMenu = item;
                  });
                },
                itemBuilder: (context) => <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.ruta1,
                    child: Text('Ruta 1'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.ruta2,
                    child: Text('Ruta 2'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.ruta3,
                    child: Text('Ruta 3'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.ruta4,
                    child: Text('Ruta 4'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.ruta5,
                    child: Text('Ruta 5'),
                  ),
                ],
              )
            ],
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 15),
            // ignore: prefer_const_constructors
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Lorem impson',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                const Cards(title: 'Lorem'),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('Lorem impson', style: TextStyle(fontSize: 30)),
                ),
                const Cards(title: 'Lorem'),
                const Cards(title: 'Lorem')
              ],
            )));
  }
}
