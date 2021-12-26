import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_page_home.dart';

class FirstPage extends State<FirstPageHome> {
  late PageController pageController;
  int _currentPage = 0;

  var heroes = ["Thor", "Hulk", "Iron Man"];

  var images = ['images/thor.jpg', 'images/hulk.jpg', 'images/man.jpg'];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seoncds: 4), (Timer timer) {
      if (_currentPage < 2) {
        _curentPage++;
      } else {
        _currentPage = 0;
      }
      pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    }
    pageController = PageController(initialPage: 0, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Column(children: [
                Image.asset('images/log.png'),
                const Text("Choose hero",
                    style: TextStyle(color: Colors.white, fontSize: 30))
              ]),
              Expanded(
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int position) {
                        return slider(position);
                      }))
            ])));
  }

  slider(int index) {
    return Container(
        child: Center(
            child: Text(heroes[index],
                style: const TextStyle(color: Colors.white, fontSize: 30))),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(images[index]), fit: BoxFit.cover)),
        margin: const EdgeInsets.all(20));
  }
}
