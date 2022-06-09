import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String family;
  final String pic;
  const UserWidget({
    Key? key,
    required this.family,
    required this.pic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  // backgroundColor: Colors.green,
                  radius: 25,
                  backgroundImage: AssetImage('images/$pic'),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              family,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
