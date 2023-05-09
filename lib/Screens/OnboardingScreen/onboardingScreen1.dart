import 'package:flutter/material.dart';
import 'package:hadantty/Screens/LoginScreen/LoginScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String logo;
  final String title;
  final String body;

  BoardingModel({
    @required this.image,
    @required this.logo,
    @required this.title,
    @required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => onboardingScreen1();
}

class onboardingScreen1 extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/onboarding1.png',
        logo: 'assets/images/Logo.png',
        title: 'On Board 1 Title',
        body: 'On Board 1 body'),
    BoardingModel(
        image: 'assets/images/onboarding2.jpeg',
        logo: 'assets/images/Logo.png',
        title: 'On Board 2 Title',
        body: 'On Board 2 body'),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1, -1.026),
            end: Alignment(-1, 1),
            colors: <Color>[Color(0xff00ffef), Color(0xff008f9a)],
            stops: <double>[0, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                child: SizedBox(
              width: size.width,
              height: size.height * .5,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    BuildIBoardingImage(boarding[index]),
                itemCount: boarding.length,
              ),
            )),
            Positioned(
                top: size.height*0.45,
                child: SizedBox(
                  width: size.width,
                  height: size.height * .650,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: size.height*0.8,
                left: size.width*0.455,
                child: SmoothPageIndicator(
                  controller: boardController, // PageController
                  count: 2,
                  effect: WormEffect(
                    dotHeight: 10,
                    spacing: 5,
                    dotWidth: 10,
                    dotColor: Color(0xff00ffef) ,
                    activeDotColor: Color(0xff008f9a)
                  ), // your preferred effect
                )),
            Positioned(
                top: size.height*0.85,
                left: size.width*0.45,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (Context) {
                        return LoginScreen();
                      }));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Color(0xffa3a3a3),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))),
            Positioned(
              top: size.height*0.9,
              left: size.width*0.285,
              child: SizedBox(
                width: 153,
                height: 33,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment(-1.992, 0.034),
                        end: Alignment(1, 0.034),
                        colors: <Color>[Color(0xff00ffef), Color(0xff008f9a)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (isLast) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (Context) {
                            return LoginScreen();
                          }));
                        } else {
                          boardController.nextPage(
                              duration: Duration(milliseconds: 750),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text('Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xffffffff),
                          )),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildIBoardingImage(BoardingModel model) =>
      Column(children: [
        Expanded(
          child: Stack(children: [
            Positioned(
              child: Image(
                image: AssetImage('${model.image}'),
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Positioned(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1, -1),
                            end: Alignment(-1, 1),
                            colors: <Color>[Color(0x4f00ffef), Color(0x4f008f9a)],
                            stops: <double>[0, 1],
                          ),
                        )))),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.13,
              left: MediaQuery.of(context).size.width * 0.29,
              child: Image(
              image: AssetImage('${model.logo}'),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.25,

            ),
            )
          ]),
        ),
      ]);

  Widget BuildIBoardingTitle(BoardingModel model) => Column(

        children: [
          Text(
            '${model.title}',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            '${model.body}',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      );
}
