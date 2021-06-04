import 'package:chat_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.cyan[900],
                fontWeight: FontWeight.bold,
                fontSize: 22),
                bodyTextStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[400])),
        title: "Welcome",
        image: Image.asset("assets/intro/quality.png"),
        body: "This is an online Ecommerce Application",
        footer: Text(
          "Make your Shopping more Better and Secure",
          style: TextStyle(
              color: Colors.cyan[400],
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
      PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  color: Colors.cyan[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
                  bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[400])),
          title: "Make your Shopping Easy and Healthy",
          image: Image.asset("assets/intro/makeiteasy.png"),
          body:
              "In the context of the COVID-19 pandemic, Shopping Safety and health takes on even greater importance."),
      PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  color: Colors.cyan[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
                  bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[400])),
          title:
              "Order your product from your home and pick up in the given time",
          image: Image.asset("assets/intro/standing.jpg"),
          body: "Why standing in a line when it is not safe ")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      onDone: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup()));
      },
      globalBackgroundColor: Colors.white,
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.cyan[900],
        activeSize: Size(30, 4),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      pages: getPages(),
      showSkipButton: true,
      skip: Padding(
        padding: EdgeInsets.only(),
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.cyan),
          child: Center(
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      done: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30), topLeft: Radius.circular(30)),
            color: Colors.cyan),
        child: Center(
          child: Text(
            'Sign up',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    ));
  }
}
