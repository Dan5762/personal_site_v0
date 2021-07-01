import 'package:flutter/material.dart';

import 'package:animated_background/animated_background.dart';

import 'package:personal_site/widgets/myappbar.dart';

class AboutPage extends StatefulWidget {

  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {

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
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'A Bit of Background',
                    style: TextStyle(
                      fontSize: 72.0,
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