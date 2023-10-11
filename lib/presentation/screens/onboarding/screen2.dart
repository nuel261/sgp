import 'package:flutter/material.dart';
import 'dart:async';
import '../../theme/main_theme.dart';
import "../../routes.dart";

class onBoardingScreen2 extends StatefulWidget {
  const onBoardingScreen2({Key? key}) : super(key: key);
  @override
  _onBoardingScreen2State createState() => _onBoardingScreen2State();
}

class _onBoardingScreen2State extends State<onBoardingScreen2> {
  final AllTheme sgtheme = AllTheme();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        //check if the swipe is from left to right
        if (details.primaryVelocity! < 0) {
          Navigator.pushNamed(context, AppRoutes.onboarding_screen3);
        } else if (details.primaryVelocity! > 0) {
          Navigator.pop(context);
        }
      },
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Center(
                      child: Image.asset(
                    "public/images/board2.png",
                  ))),
              Container(
                  child: Text(
                "Get equivalent trades on bitcoin trades",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Text(
                  "You’re guaranteed equivalent returns on all bitcoin trades, with  minima charges.",
                  style: TextStyle(
                      fontFamily: 'Noto sans', fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Dot(
                      color: sgtheme.blackColor,
                    ),
                    SizedBox(width: 8),
                    Dot(
                      color: sgtheme.customColor,
                      width: 24,
                    ),
                    SizedBox(width: 8),
                    Dot(color: sgtheme.blackColor),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.onboarding_screen3);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: sgtheme.blackColor,
                          ),
                          child: Center(
                              child: Text('Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    ));
  }
}

class Dot extends StatelessWidget {
  final Color color;
  final double width;

  const Dot({Key? key, required this.color, this.width = 12}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 12,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
    );
  }
}
