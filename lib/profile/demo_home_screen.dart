

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DemoProfileHomeScreen extends StatelessWidget {
  const DemoProfileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.commentDots,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/profile/hotel/room4.jpg'),
                      radius: 35,
                    ),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Joe",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text("Full stack deeloper"),
                        Row(
                          children: const [
                            Icon(
                              FontAwesomeIcons.locationArrow,
                              size: 15,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Kathmandu , Nepal",
                              style: TextStyle(color: Colors.blueGrey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      "Over 8+ years of experience in web development and 5+ years of experience in  mobile application development"),
                ),
              ),
              _buildTitle("Skills"),
              const SizedBox(
                height: 10,
              ),
              _buildSkillRow("wordpress", 0.5),
              _buildSkillRow("Lavarel", 0.3),
              _buildSkillRow("Flutter", 0.9),
              _buildSkillRow("react js", 0.7),
              _buildTitle("Experience"),
              _buildListTile("DKIA NEPAl", "Web developer", "2012-2014"),
              _buildListTile("KIS NEPAL", "java developer", "2014-2016"),
              _buildListTile("KAKUGS NEPAl", "python developer", "2016-2018"),
              _buildListTile("DKIA NEPAL", "Flutter developer", "2018-2020"),
              const SizedBox(
                height: 20,
              ),
              _buildTitle("Education"),
              const SizedBox(
                height: 20,
              ),
              _buildListTile("Tribuwan University",
                  " Bachelor in Information technology ", "2008-2012"),
              _buildListTile(
                  "Global college of management", "+2 ", "2006-2008"),
              const SizedBox(
                height: 20,
              ),
              _buildTitle("Contact"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.mail_outline_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("ksoorajkarki@gmail.com"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Text("+977-9861853947"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _luncherURl(
                            'https://www.facebook.com/profile.php?id=100006230657387');
                      },
                      icon: const Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.indigo,
                      )),
                  IconButton(
                      onPressed: () {
                        _luncherURl('https://github.com/2001suraj');
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        _luncherURl('https://youtube.com');
                      },
                      icon: const Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _luncherURl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not lunch $url';
    }
  }

  ListTile _buildListTile(String company, String position, String duration) {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.solidDotCircle, size: 12),
      title: Text(
        company,
        style:const  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text("$position ($duration))"),
    );
  }

  Row _buildSkillRow(String title, double value) {
    return Row(children: [
      const SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 2,
        child: Text(
          title.toUpperCase(),
        ),
      ),
      Expanded(
          flex: 4,
          child: LinearProgressIndicator(
            value: value,
            color: Colors.indigo,
            backgroundColor: Colors.black38,
          ))
    ]);
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
