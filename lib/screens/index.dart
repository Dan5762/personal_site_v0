import 'package:flutter/material.dart';

import 'package:animated_background/animated_background.dart';

import 'package:personal_site/widgets/myappbar.dart';
import 'package:personal_site/widgets/text_widgets.dart';

class IndexPage extends StatefulWidget {

  @override
  _IndexPageState createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin {

  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('images/black_dot.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 2000.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 15.0,
    particleCount: 40,
  );

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: particleOptions,
          paint: particlePaint,
        ),
        vsync: this,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          titleText("Hi there"),
                          bodyText("Welcome to my corner of the interweb"),
                          SizedBox(
                            height: 50
                          ),
                          headerText("My Latest Tinkerations"),
                          bodyText("I'm currently working on a few different projects, here's an evolving list:"),
                          SizedBox(
                            height: 20
                          ),
                          linkedListText([
                            {
                              "title": "CleanPlate",
                              "description": "A non-profit called CleanPlate",
                              "link": "https://www.cleanplate.org.uk/"
                            },
                            {
                              "title": "Mathematical Notes",
                              "description": "A set of mathematical notes on topics from probability to group theory",
                              "link": "https://github.com/Dan5762/Mathematics"},
                            {
                              "title": "Othello",
                              "description": "An online version of othello with several reinforcement learning algorithms showcased as possible opponents",
                              "link": "https://github.com/Dan5762/Othello"},
                          ]),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Image.asset(
                            'images/pepper_pose.png',
                            width: constraints.maxWidth / 4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}

enum ParticleType {
  Shape,
  Image,
}
