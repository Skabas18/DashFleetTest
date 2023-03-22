import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/textappbar.dart';

enum SampleItem { ruta1, ruta2, ruta3, ruta4, ruta5 }

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
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
            child: Text(
              'Lorem Ipson',
              style: const TextStyle(fontSize: 40),
            )));
  }
}
