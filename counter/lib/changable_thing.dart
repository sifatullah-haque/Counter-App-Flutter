import 'package:flutter/material.dart';

class ChangableThing extends StatefulWidget {
  const ChangableThing({
    super.key,
  });

  @override
  State<ChangableThing> createState() => _ChangableThingState();
}

class _ChangableThingState extends State<ChangableThing> {
  int counter = 00;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 65.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 18.0,
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(55.0),
              child: Text(
                counter.toString().padLeft(2, '0'),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 75.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 100.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
            },
            child: const Icon(
              Icons.add,
              size: 25.0,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 75.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 100.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            onPressed: () {
              setState(() {
                counter = counter - 1;
              });
            },
            child: const Icon(
              Icons.remove,
              size: 25.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
