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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      titleText("Welcome to my corner of the internet"),
                      bodyText("I'm currently studying a masters in physics however my interests extend beyond physics, as this site may indicate. I'm planning on using the site to showcase my projects (and to encourage me to get them into a presentable state)."),
                      SizedBox(height: 20),
                      headerText("Latest Projects"),
                      bodyText("I'm currently working on a few different projects, here's an evolving list:"),
                      SizedBox(height: 20),
                      linkedListText([
                        {
                          "title": "CleanPlate",
                          "description": "A non-profit called CleanPlate",
                          "link": "https://www.cleanplate.org.uk/"
                        },
                        {
                          "title": "fork",
                          "description": "A simple app for tuning musical instruments",
                          "link": "https://github.com/Dan5762/fork"
                        },
                        {
                          "title": "Othello",
                          "description": "An online version of othello with several reinforcement learning algorithms showcased as possible opponents",
                          "link": "https://github.com/Dan5762/Othello"
                        },
                      ]),
                      SizedBox(height: 20),
                      bodyText("If any of these projects catch your interest feel free to get in contact, whether you're keen to get involved or simply have a comment to make."),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'images/boat_view.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

enum ParticleType {
  Shape,
  Image,
}
