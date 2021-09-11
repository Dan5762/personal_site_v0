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
            child: Column(
              children: [
                titleText("Books that left an impression"),
                SizedBox(height: 20),
                linkedListText([
                  {
                    "title": "The Metamorphosis of Prime Intellect",
                    "description": "Definitely a strange and unique book. Even if you can't accept intelligence arising"
                    " from associations and our current laws of physics getting a siginificant overhaul, this book will"
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
                SizedBox(height: 20),
                titleText("Thoughts that stuck around"),
                SizedBox(height: 20),
                linkedListText([
                  {
                    "title": "Thinking in Terms of Representations",
                    "description": "I find the potentially more tractable approach to understanding intelligence of viewing it as a compression challenge very appealing",
                    "link": "https://en.wikipedia.org/wiki/Hutter_Prize"
                  },
                  {
                    "title": "Beauty in Simplicity and Abstraction",
                    "description": "Can all complex structures be represented to demonstrate the simplicity inside their complexity? Maybe our intuitions and design lead us to overlook certain symmetries",
                    "link": ""
                  }
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}