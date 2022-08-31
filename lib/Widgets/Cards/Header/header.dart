import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "Welcome back 👋",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Text("Hamilton's Porfolio",
                        style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Image.asset("assets/img/avatar.png", height: 45),
                  ],
                );
  }
}