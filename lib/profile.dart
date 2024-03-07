// ignore_for_file: use_super_parameters, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  projetCard(lang, title, description, iconData) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lang,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 50,
              bottom: 10,
              top: 10,
              child: Icon(
                iconData,
                color: Colors.white,
                size: 75,
              ),
            ),
          ],
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white), // Mengubah warna teks menjadi putih
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'Born', 'Bandung', 'Jawa Barat', FontAwesomeIcons.baby),
              projetCard('Age', '24', 'Years Old', FontAwesomeIcons.child),
              projetCard('Religion', 'Islam', 'My God is Allah SWT',
                  FontAwesomeIcons.mosque),
              projetCard('Civil Status', 'Single', 'But, I Have a Girlfriend',
                  FontAwesomeIcons.handHoldingHeart),
              projetCard(
                  'Gander', 'Male', 'I Am 100% is Male', FontAwesomeIcons.mars),
              projetCard('Home Address', 'Rancaekek', 'Kab.Bandung, Jawa Barat',
                  FontAwesomeIcons.house),
              projetCard('Nationality', 'Indonesia',
                  'Merah Putih Menyala Abangku', FontAwesomeIcons.flag),
              projetCard('Education', 'STT Mandala', 'S1 Teknik Informatika',
                  FontAwesomeIcons.userGraduate)
            ],
          ),
        ),
      ),
    );
  }
}
