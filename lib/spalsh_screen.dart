// ignore_for_file: prefer_const_constructors

import 'package:biodata_andriajitama/about.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image.png"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image.png"), fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      const Text(
                        "Selamat Datang Semuanya!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Mobile Apps Biodata Diri Untuk Tugas \n Mobile Computing!!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 60),
                        child: Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                border: Border.all(
                                  width: 1.5,
                                  color: Color(0xFFFF6474),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                border: Border.all(
                                  width: 1.5,
                                  color: Color(0xFFFF6474),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 16,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  color: Color(0xFFFF6474)),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const About()));
                              },
                              child: Container(
                                height: 75,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFFF6474)),
                                child: const Center(
                                  child: Text(
                                    "GetStarted",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
