import 'package:flutter/material.dart';

import 'package:animated_background/animated_background.dart';

import 'package:personal_site/widgets/myappbar.dart';
import 'package:personal_site/widgets/text_widgets.dart';

class BackgroundPage extends StatefulWidget {

  @override
  _BackgroundPageState createState() => new _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> with TickerProviderStateMixin {

  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('images/black_dot.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 2000.0,
    spawnMinRadius: 2.0,
    spawnMaxRadius: 30.0,
    particleCount: 30,
  );

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

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
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: screenHeight * 0.75,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'images/handstand_mountain.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: screenHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titleText("A Brief Timeline"),
                              SizedBox(height: 20),
                              linkedListText([
                                {
                                  "title": "1998",
                                  "description": "Born",
                                  "link": "https://www.youtube.com/watch?v=25hqWUXcDdA"
                                },
                                {
                                  "title": "2016 - 2019",
                                  "description": "Studied Physics BSc at the University of Nottingham",
                                  "link": ""
                                },
                                {
                                  "title": "2019",
                                  "description": "Data Science Intern at Featurespace",
                                  "link": "https://www.featurespace.com/"
                                },
                                {
                                  "title": "2019 - 2021",
                                  "description": "Data Scientist at ElectronRx",
                                  "link": "https://www.electronrx.com/"
                                },
                                {
                                  "title": "2021 - 2022",
                                  "description": "Studying Physics MSc at Imperial College London",
                                  "link": ""
                                },
                              ]),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titleText("Some other interests"),
                              SizedBox(height: 20),
                              linkedListText([
                                {
                                  "title": "Kitesurfing",
                                  "description": "",
                                  "link": "https://www.youtube.com/watch?v=2ALb2b6R1uA"
                                },
                                {
                                  "title": "Guitar (and music in general)",
                                  "description": "",
                                  "link": "https://www.youtube.com/watch?v=KUt_pnutRtI"
                                },
                                {
                                  "title": "App and Web Development",
                                  "description": "",
                                  "link": ""
                                },
                                {
                                  "title": "Language Learning",
                                  "description": "",
                                  "link": ""
                                },
                                {
                                  "title": "Tennis",
                                  "description": "",
                                  "link": ""
                                },
                                {
                                  "title": "Current Affairs",
                                  "description": "",
                                  "link": ""
                                },
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ], 
            ),
          ),
        ),
      ),
    );
  }
}