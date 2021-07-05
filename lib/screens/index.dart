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
                          bodyText("Welcome to my corner of the internet"),
                          SizedBox(height: 50),
                          headerText("Latest Tinkerations"),
                          bodyText("I'm currently working on a few different projects, here's an evolving list:"),
                          SizedBox(height: 20),
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
                          SizedBox(height: 50),
                          headerText("Interesting Thinking"),
                          SizedBox(height: 20),
                          linkedListText([
                            {
                              "title": "Beauty in Simplicity and Abstraction",
                              "description": "Can all complex structures be represented to demonstrate the simplicity inside their complexity? Maybe our intuitions and design lead us to overlook certain symmetries",
                              "link": ""
                            },
                            {
                              "title": "Thinking in Terms of Representations",
                              "description": "I find the potentially more tractable approach to understanding intelligence of viewing it as a compression challenge very appealing",
                              "link": "https://en.wikipedia.org/wiki/Hutter_Prize"
                            }
                          ]),
                          SizedBox(height: 50),
                          headerText("Impactful Reading"),
                          SizedBox(height: 20),
                          linkedListText([
                            {
                              "title": "The Metamorphosis of Prime Intellect",
                              "description": "Definitely a strange and unique book. Even if you can't accept intelligence arising"
                              " from associations and our current laws of physics getting a siginificant overhaul then the book will"
                              " leave your mind at least a little blown and your sense of reality a little askew.",
                              "link": "http://localroger.com/prime-intellect/"
                            },
                            {
                              "title": "Imperium",
                              "description": "It's hard to convincingly capture a man living 2000 years ago at the heart of the Roman"
                              " Empire, however for me Robert Harris achieves just that in this trilogy",
                              "link": "https://en.wikipedia.org/wiki/Imperium_(Harris_novel)"
                            },
                            {
                              "title": "Human Traces",
                              "description": "A touching book that takes you on an emotional and intellectual joruney",
                              "link": "https://en.wikipedia.org/wiki/Human_Traces"
                            }
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
