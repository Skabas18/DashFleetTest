import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba_app/src/pages/menu_pages.dart';

import '../widgets/switch.dart';
import '../widgets/textappbar.dart';
import '../widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: Column(
            children: <Widget>[
              TextAppbar('AMB APP'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextAppbar('Login'),
              )
            ],
          ),
          backgroundColor: Colors.green,
          toolbarHeight: 150,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      body: Column(
        children: [
          TextFields(
            controller: usernameController,
            hintText: 'Celular',
            obscureText: false,
          ),
          TextFields(
            controller: passwordController,
            hintText: '********',
            obscureText: true,
          ),
          const SwitchButton(),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white),
              width: size.width * 0.5,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MenuPage()));
                  },
                  child: const Text(
                    "Entrar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "RSV", fontSize: 30, color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: size.width * 0.8,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MenuPage()));
                  },
                  child: const Text(
                    "Olvidó su clave?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "RSV", fontSize: 25, color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
