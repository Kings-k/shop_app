import 'package:flutter/material.dart';
//import 'package:shop_app/screens/home/components/section_title.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => CategoryCard();
  // @override
  // Widget build(BuildContext context) {
  //   List<Map<String, dynamic>> categories = [
  //     {"icon": "assets/icons/Flash Icon.svg", "text": "vente cash"},
  //     {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
  //     {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
  //     {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
  //   ];
  //   return Padding(
  //     padding: const EdgeInsets.all(20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: List.generate(
  //         categories.length,
  //         (index) => CategoryCard(
  //           icon: categories[index]["icon"],
  //           text: categories[index]["text"],

  //           press: () {},
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class CategoryCard extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 150,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    width: 150,
                    // margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("data"),
                  ),
                )
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("data"),
                  ),
                )
              ]),
            ],
          ),
          Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    width: 150,
                    // margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("data"),
                  ),
                )
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFECDF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("data"),
                  ),
                )
              ]),
            ],
          ),
        ],
      ),

      // const SizedBox(height: 4),
      // const Text("text", textAlign: TextAlign.center)
    );
  }

  State<StatefulWidget> createState() => throw UnimplementedError();
}
