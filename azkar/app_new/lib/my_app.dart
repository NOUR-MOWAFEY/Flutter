import 'package:app_new/page_data.dart';
import 'package:app_new/page_items.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

List<PageData> pageData = [
  PageData(
      img: 'images/one.png',
      title: 'Better way to learning is calling you!',
      description:
          'Impeet viverra vivamgs porttior ules ac vultelectus velit Sen lectus ue'),
  PageData(
      img: 'images/two.png',
      title: 'Find yourself by doingwhatever you do !',
      description:
          'Impeet viverra vivamus porttior ules ac vultelectus velit sen lectus ue'),
  PageData(
      img: 'images/three.png',
      title: "It's not just learning,It's a promise!",
      description:
          'Impeet viverra vivamus porttior ules ac vultelectus velit sen lectus ue'),
];

PageController pageController = PageController();

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              PageItems(
                pageData: pageData[0],
              ),
              PageItems(
                pageData: pageData[1],
              ),
              PageItems(
                pageData: pageData[2],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
