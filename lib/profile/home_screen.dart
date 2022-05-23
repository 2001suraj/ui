import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.commentDots),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon:const  Icon(Icons.more_vert),
                color: Colors.black,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:30,right:20,left:20,bottom:20),
                  
                  child: const Text(
                      "Over 8+ years of experience in web development  and 5+ years od experience in mobile application development "),
                ),
                _buildPTitle("SKILLS"),
                const SizedBox(height: 12),

           _buildDivider(),
                const SizedBox(height: 12),
                _buildSkillRow("WORDPRESS", 0.75),
                const SizedBox(height: 10),
                _buildSkillRow("LARAVEL", 0.5),
                const SizedBox(height: 10),
                _buildSkillRow("React JS", 0.8),
                const SizedBox(height: 10),
                _buildSkillRow("FlUTTER", 0.9),
                const SizedBox(height: 15),


                const SizedBox(height: 7),
                _buildPTitle("EXPERIENCE"),
           _buildDivider(),

                _buildExperienceRow(
                    title: "GID Nepal",
                    post: "WordPress developer",
                    date: "2012-2015"),
                _buildExperienceRow(
                    title: "SJA Nepal",
                    post: "flutter developer",
                    date: "2015-2016"),
                _buildExperienceRow(
                    title: "JAI Nepal",
                    post: "Java developer",
                    date: "2017-2019"),
                _buildExperienceRow(
                    title: "POI Nepal",
                    post: "Web developer",
                    date: "2019-2020"),
                _buildPTitle("EDUCATION"),
           _buildDivider(),

                const SizedBox(height: 7),
                _buildExperienceRow(
                    title: "Sunway College, Nepal",
                    post: "BSC(Hons.)",
                    date: "2021-till"),
                _buildExperienceRow(
                    title: " Global College of management",
                    post: "+ 2",
                    date: "2018-2020"),
                _buildPTitle("CONTACT"),
           _buildDivider(),

                const SizedBox(height: 7),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("ksoorajkarki@gmail.com"),
                ),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+977-9861853947"),
                ),
                _buildSocialRow(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }

  Padding _buildDivider() {
    return const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 35),
            child:  Divider(color: Colors.indigoAccent,),
          );
  }

  Row _buildSocialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        IconButton(
          onPressed: () {
            _luncherURl(
                'https://www.facebook.com/profile.php?id=100006230657387');
          },
          icon: const Icon(FontAwesomeIcons.facebookF),
          color: Colors.indigo,
        ),
        IconButton(
          onPressed: () {
            _luncherURl('https://github.com/2001suraj');
          },
          icon: const Icon(FontAwesomeIcons.github),
          color: Colors.grey,
        ),
        IconButton(
          onPressed: () {
            _luncherURl('https://youtube.com');
          },
          icon: const Icon(FontAwesomeIcons.youtube),
          color: Colors.red,
        ),
      ],
    );
  }

  _luncherURl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not lunch $url';
    }
  }

  ListTile _buildExperienceRow({String? title, String? post, String? date}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 10.0, left: 15),
        child: Icon(
          Icons.circle,
          size: 12,
          color: Colors.black38,
        ),
      ),
      title: Text(title!,
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold)),
      subtitle: Text("$post ($date)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(children: [
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: Text(
          skill,
          textAlign: TextAlign.right,
        ),
        flex: 2,
      ),
      const SizedBox(
        width: 10,
      ),
      Flexible(
          flex: 5,
          child: LinearProgressIndicator(
            color: Colors.purple,
            backgroundColor: Colors.purple[100],
            value: level,
          )),
     const  SizedBox(
        width: 10,
      ),
    ]);
  }

  Row _buildHeader() {
    return Row(
      children: [
       const  SizedBox(width: 20),
        const CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 55,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile/hotel/suraj.jpg'),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Suraj karki",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Full stack developer"),
            Row(
              children: const [
                Icon(FontAwesomeIcons.locationArrow,
                    size: 12, color: Colors.blueGrey),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Kathmandu,Nepal",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Padding _buildPTitle(String title) {
    return Padding(
      padding: const  EdgeInsets.only(left: 20, top: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
