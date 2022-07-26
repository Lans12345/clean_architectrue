import 'package:flutter/material.dart';

import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              FullScreenWidget(
                child: Container(
                  width: 300.0,
                  height: 500.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              FullScreenWidget(
                child: Container(
                  width: 300.0,
                  height: 500.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/2.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300.0,
                height: 500.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ));
  }
}
