import 'package:flutter/material.dart';

class IDcard extends StatefulWidget {
  const IDcard({super.key});

  @override
  State<IDcard> createState() => _IDcardState();
}

class _IDcardState extends State<IDcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Digital ID",
          style: TextStyle(fontSize: 28.0),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline_sharp),
          )
        ],
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(25))),
        elevation: 15,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
      ),
      body: Wrap(
        spacing: 5,
        children: [
          const Padding(padding: EdgeInsets.all(15)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                // maxRadius: 200,
                radius: 120,
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.qZqM5tSFlWiz3rzS8eWPsQHaHa?rs=1&pid=ImgDetMain"),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(23),
              width: 500,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              padding: const EdgeInsets.all(40),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Name :",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Text(
                        " Flutter Programmer",
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(16)),
                  Row(
                    children: [
                      Text(
                        "ID :",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Text(
                        " ID02397",
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "../assets/images/Qrcode.png",
              width: 300,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}
