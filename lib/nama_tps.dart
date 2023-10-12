import 'package:flutter/material.dart';

class NamaTps extends StatefulWidget {
  const NamaTps({
    Key? key,
    required this.nmtempat,
    required this.nmjl,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  final String nmtempat;
  final String nmjl;
  final String image1;
  final String image2;

  @override
  _NamaTpsState createState() => _NamaTpsState();
}

/// untuk layout fitur tps sekitar
class _NamaTpsState extends State<NamaTps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    widget.nmtempat,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    widget.nmjl,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        widget.image1,
                        scale: 4.5,
                      ),
                      Image.asset(
                        widget.image2,
                        scale: 4.5,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
