import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.name,
    required this.weight,
    required this.price,
  });

  final String name;
  final String weight;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
        ),
        Text(
          weight,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.grey.shade500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(Icons.remove),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                price,
                style:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )
            ],
          ),
        ),
        const Text(
          "Product Description",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"),
        ),
      ],
    );
  }
}
