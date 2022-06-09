import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String family;
  final String msg;
  final String pic;
  final String time;
  final int count;
  const MessageWidget({
    Key? key,
    required this.family,
    required this.msg,
    required this.pic,
    required this.time,
    this.count = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/$pic'),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$family',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  msg,
                  style: TextStyle(
                      fontSize: 13, color: Colors.grey.shade700, height: 1.5),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                time,
                style: TextStyle(
                    fontSize: 12,
                    color: count == 0 ? Colors.grey.shade800 : Colors.green),
              ),
              const SizedBox(
                height: 10,
              ),
              count == 0
                  ? Container()
                  : CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green.shade600,
                      child: Text(
                        '$count',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
