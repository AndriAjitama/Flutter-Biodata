// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: Color(0xff252525),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: Icon(Icons.menu, color: Colors.white),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        }),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'Details',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/details');
                        }),
                    value: 2,
                  ),
                ]),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 30),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/andri.png',
                  height: 450,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Andri Ajitama',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Frontend Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        launch('https://andri-ajitama.web.app/');
                      },
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            launch(
                                'https://www.instagram.com/andriajitama/?igshid=MGNiNDI5ZTU%3D');
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch(
                                'https://www.linkedin.com/in/andri-ajitama-012081170/in?trk=contact-info');
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch('https://github.com/AndriAjitama');
                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch(
                                'https://twitter.com/AndriAjitama?t=8cvb5Cx6Mh_zlgMba7jVNg&s=09');
                          },
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch(
                                'https://www.facebook.com/andri.ajitama.5?mibextid=ZbWKwL');
                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch('https://andri-ajitama.web.app/');
                          },
                          icon: Icon(
                            FontAwesomeIcons.globe,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
