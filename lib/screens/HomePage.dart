import 'package:flutter/material.dart';

import '../widget/message_widget.dart';
import '../widget/user_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Message',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: const Icon(
                      Icons.mode_edit,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      gapPadding: 4,
                    ),
                    fillColor: Colors.white,
                    labelStyle:
                        TextStyle(color: Colors.grey[500], fontSize: 14.0),
                    labelText: 'search',
                    counterText: '',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                      size: 28.0,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Activities',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),

              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    UserWidget(family: 'Selma', pic: 'images06.jpg'),
                    UserWidget(family: 'Mehdi', pic: 'images07.jpg'),
                    UserWidget(family: 'Ali', pic: 'images06.jpg'),
                    UserWidget(family: 'Reza', pic: 'images07.jpg'),
                    UserWidget(family: 'Amir', pic: 'images06.jpg'),
                    UserWidget(family: 'Selma', pic: 'images06.jpg'),
                    UserWidget(family: 'Reza', pic: 'images07.jpg'),
                    UserWidget(family: 'Amir', pic: 'images06.jpg'),
                    UserWidget(family: 'Selma', pic: 'images06.jpg'),
                  ],
                ),
              ),

              // const SizedBox(height: 5),
              const Text(
                'Message',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Container(
                height: 250,
                child: ListView(
                  children: const [
                    MessageWidget(
                      family: 'Mehdi',
                      msg:
                          'Hello how are you ? i am going to market.do you want burgers?',
                      pic: 'images06.jpg',
                      time: '23min',
                      count: 1,
                    ),
                    MessageWidget(
                      family: 'Reza',
                      msg:
                          'Hello how are you ? i am going to market.do you want burgers?',
                      pic: 'images07.jpg',
                      time: '50min',
                      count: 1,
                    ),
                    MessageWidget(
                      family: 'Amir',
                      msg:
                          'Hello how are you ? i am going to market.do you want burgers?',
                      pic: 'images06.jpg',
                      time: 'yesterday',
                      count: 0,
                    ),
                    MessageWidget(
                      family: 'Amir',
                      msg:
                          'Hello how are you ? i am going to market.do you want burgers?',
                      pic: 'images06.jpg',
                      time: 'yesterday',
                      count: 0,
                    ),
                    MessageWidget(
                      family: 'Amir',
                      msg:
                          'Hello how are you ? i am going to market.do you want burgers?',
                      pic: 'images06.jpg',
                      time: 'yesterday',
                      count: 0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'call'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'camera'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
    );
  }
}
