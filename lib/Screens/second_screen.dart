import 'package:flutter/material.dart';
import '../Reusable_Widgets/description.dart';
class SecondScreen extends StatelessWidget {
  final Image image;
  final Color customColor;
  final String name;
  final String weight;
  final String price;

  SecondScreen({
    required this.image,
    required this.customColor,
    required this.name,
    required this.weight,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                      height: double.infinity,
                      color: Colors.redAccent.withOpacity(0.5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40.0),
                            child: image,
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50)),
                              ),
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    DescriptionWidget(
                                      name: name,
                                      weight: weight,
                                      price: price,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        OutlinedButton(
                                          // style: ButtonStyle(),

                                          style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            side: BorderSide(
                                              width: 1,
                                              color: customColor,
                                            ),
                                          ),
                                          onPressed: () {
                                            print("Add to favorite");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15.0),
                                            child: Icon(
                                              Icons.favorite,
                                              color: customColor,
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: customColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            print("add to cart");
                                          },
                                          child: const Padding(
                                            padding:
                                            EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              "Add to Cart",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.navigate_before),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.menu),
                  ),
                  const Positioned(
                    left: 150,
                    top: 170,
                    child: Icon(
                      Icons.more_horiz,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
