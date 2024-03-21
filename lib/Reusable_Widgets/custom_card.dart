import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String name;
  final String numericValue;
  final Image image;
  final Widget destinationScreen;

  CustomCard(
      {required this.color,
        required this.name,
        required this.numericValue,
        required this.height,
        required this.width,
        required this.image,
        required this.destinationScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    numericValue.toString(),
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Center(child: image)),
                ],
              ),
              const Positioned(
                right: 0,
                bottom: 0,
                child:
                Icon(Icons.add_box_sharp, color: Colors.black87, size: 30),
              ),
              const Positioned(
                right: 0,
                top: 0,
                child: Icon(Icons.more_vert_outlined,
                    color: Colors.black26, size: 30),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
