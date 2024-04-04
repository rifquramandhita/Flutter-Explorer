import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:simple_onboarding/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  static const pageTitleStyle = TextStyle(
    fontSize: 20.0,
    wordSpacing: 1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.w900,
  );
  static const pageInfoStyle = TextStyle(
    letterSpacing: 0.8,
    height: 1.6,
    fontSize: 14,
  );
  final onboardingPagesList = [
    SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image.asset(
              'assets/images/pic_1.png',
            ),
          ),
          const SizedBox(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'SECURE IT SOLUTIONS',
                      style: pageTitleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'We provide a secure network and data management solutions. We handle all the networking and IT side of your business and let you worry about running your actual business',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset(
              'assets/images/pic_2.png',
            ),
          ),
          const SizedBox(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'BUSINESS NETWORK SOLUTIONS',
                      style: pageTitleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'We provide a scalable, reliable, and cost-effective network solutions to 100s of businesses in the DMV area.',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Text(
                      'We set up business networks, VPNs, IP cameras, on-site server, etc for a fraction of the cost most IT companies charge',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset(
              'assets/images/pic_3.png',
            ),
          ),
          const SizedBox(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'STORAGE & BACKUP SOLUTIONS',
                      style: pageTitleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'As the integrity and value of your company\'s data is most vital, we offer a multitude of solutions in safekeeping, managing, storing, and backing up your data.',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Text(
                      'Whether you choose an on-site or remote storage solutions, we\'ll help you pick and setup the best choice',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image.asset(
              'assets/images/pic_4.png',
            ),
          ),
          const SizedBox(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'WEBSITES & APPS DEVELOPMENT',
                      style: pageTitleStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'We\'ll build and maintain all your websites and mobile applications. Weather you\'re running a real estate business, consulting, e-commerce, etc, we\'ve got you covered.',
                      style: pageInfoStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ];
  late Material materialButton;
  late int index;
  final activePainter = Paint();
  final inactivePainter = Paint();

  @override
  void initState() {
    super.initState();
    index = 0;

    activePainter.color = Colors.blue;
    activePainter.strokeWidth = 4;
    activePainter.strokeCap = StrokeCap.round;
    activePainter.style = PaintingStyle.stroke;

    inactivePainter.color = Colors.grey;
    inactivePainter.strokeWidth = 2;
    inactivePainter.strokeCap = StrokeCap.round;
    inactivePainter.style = PaintingStyle.fill;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        startIndex: index,
        onPageChanges: (_, __, currentIndex, sd) {
          index = currentIndex;
        },
        swipeableBody: onboardingPagesList,
        buildFooter:
            (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Indicator<LinePainter>(
                  painter: LinePainter(
                    currentPageIndex: currentIndex,
                    pagesLength: pagesLength,
                    netDragPercent: dragDistance,
                    activePainter: activePainter,
                    inactivePainter: inactivePainter,
                    slideDirection: sd,
                    lineWidth: 20,
                  ),
                ),
                index == pagesLength - 1
                    ? FilledButton(onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context) =>
                      LoginScreen(),), (route) => false);
                }, child: Text("Login"))
                    : FilledButton(onPressed: () {
                  setState(() {
                    index = pagesLength - 1;
                    setIndex(index);
                  });
                }, child: Text("Skip"))
              ],
            ),
          );
        },
      ),
    );
  }
}
