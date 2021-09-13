import 'package:flutter/material.dart';

import 'package:animated_background/animated_background.dart';

import 'package:personal_site/widgets/myappbar.dart';
import 'package:personal_site/widgets/text_widgets.dart';

class ImpactsPage extends StatefulWidget {

  @override
  _ImpactsPageState createState() => new _ImpactsPageState();
}

class _ImpactsPageState extends State<ImpactsPage> with TickerProviderStateMixin {

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      titleText("Books that left an impression"),
                      SizedBox(height: 20),
                      linkedListText([
                        {
                          "title": "The Metamorphosis of Prime Intellect",
                          "description": "Definitely a strange and unique book. Even if you can't accept intelligence arising"
                          " from associations alone and the significant overhaul of the laws of physics, this book will"
                          " leave your mind at least a little blown and your sense of reality a little askew.",
                          "link": "http://localroger.com/prime-intellect/"
                        },
                        {
                          "title": "Imperium",
                          "description": "A real page turner if you enjoy historical fiction, my favourite of this genre so far",
                          "link": "https://en.wikipedia.org/wiki/Imperium_(Harris_novel)"
                        },
                        {
                          "title": "Human Traces",
                          "description": "An interesting book that takes you on an emotional and intellectual journey",
                          "link": "https://en.wikipedia.org/wiki/Human_Traces"
                        }
                      ]),
                      SizedBox(height: 20),
                      titleText("Podcasts I'm hooked on"),
                      SizedBox(height: 20),
                      linkedListText([
                        {
                          "title": "Economist Radio",
                          "description": "",
                          "link": "https://www.economist.com/podcasts"
                        },
                        {
                          "title": "Lex Fridman Podcast",
                          "description": "",
                          "link": "https://lexfridman.com/podcast/"
                        },
                        {
                          "title": "The All-In Podcast",
                          "description": "",
                          "link": "https://www.allinpodcast.co/"
                        },
                        {
                          "title": "Joe Rogan Experience",
                          "description": "",
                          "link": "https://www.joerogan.com/"
                        },
                      ]),
                      SizedBox(height: 20),
                      titleText("Quotes I've Enjoyed"),
                      SizedBox(height: 20),
                      linkedListText([
                        {
                          "title": "We are not human beings having a spiritual experience; we are spiritual beings having a human experience.",
                          "description": "- Pierre Teilhard de Chardin",
                          "link": ""
                        },
                        {
                          "title": "We have opposable thumbs not so that we could pick up tools, but because our ancestors picked up tools.",
                          "description": "- Benjamin Bratton",
                          "link": ""
                        },
                        {
                          "title": "It's time in the markets, not timing the market that counts",
                          "description": "- Hard to pin down",
                          "link": ""
                        },
                      ]),
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
                        'images/waterfall_thinking.jpeg',
                        fit: BoxFit.cover,
                      ),
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