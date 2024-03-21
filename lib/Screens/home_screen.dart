import 'package:flutter/material.dart';
import 'package:lab3_1311/Screens/second_screen.dart';
import '../Reusable_Widgets/custom_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //title: Text('App Title'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(
                30.0), // Set the height of the NavigationBar
            child: NavigationBar(
              destinations: const <NavigationDestination>[
                NavigationDestination(
                  icon: Icon(Icons.navigate_before),
                  label: 'Back',
                ),
                NavigationDestination(
                  icon: Icon(Icons.table_rows_rounded),
                  label: 'Bar',
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            // Wrap your Column with SingleChildScrollView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fruits and berries',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: Colors.white12,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Search',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      color: const Color(0xffF8D76E),
                      name: 'Strawberries',
                      numericValue: '\$10',
                      height: 200,
                      width: 140,
                      image: Image.asset('asset/strawberry.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/strawberry.png',
                          height: 150,
                          width: 150,
                          alignment: Alignment.center,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Strawberries',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                    CustomCard(
                      color: const Color(0xfffffdaf),
                      name: 'Pineapple',
                      numericValue: '\$10',
                      height: 220,
                      width: 140,
                      image: Image.asset('asset/pineapple.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/pineapple.png',
                          height: 150,
                          width: 150,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Pineapple',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      color: const Color(0xffb6d3ef),
                      name: 'Blueberries',
                      numericValue: '\$10',
                      height: 220,
                      width: 140,
                      image: Image.asset('asset/blueberries.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/blueberries.png',
                          height: 150,
                          width: 150,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Blueberries',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                    CustomCard(
                      color: const Color(0xffffdddd),
                      name: 'Grapes',
                      numericValue: '\$10',
                      height: 200,
                      width: 140,
                      image: Image.asset('asset/grapes.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/grapes.png',
                          height: 150,
                          width: 150,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Grapes',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      color: const Color(0xfffff8dd),
                      name: 'Mango',
                      numericValue: '\$10',
                      height: 200,
                      width: 140,
                      image: Image.asset('asset/mang.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/mang.png',
                          height: 150,
                          width: 150,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Mango',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                    CustomCard(
                      color: const Color(0xffc2f6c2),
                      name: 'Guava',
                      numericValue: '\$10',
                      height: 220,
                      width: 140,
                      image: Image.asset('asset/guava.png'),
                      //Second Screen initialized with the image, color, name, weight and price
                      destinationScreen: SecondScreen(
                        image: Image.asset(
                          'asset/guava.png',
                          height: 150,
                          width: 150,
                        ),
                        customColor: Colors.redAccent.withOpacity(0.5),
                        name: 'Guava',
                        weight: '1kg',
                        price: '\$10',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
