import 'package:darshan_portfolio/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLauncher(String ImgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        ImgPath,
        width: 35,
      ),
      onPressed: () async {
        await launchUrl(
          Uri.parse(url),
        );
      },
    );
  }

  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _message = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceheight = MediaQuery.of(context).size.height;
    var devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/God.jpg"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold(size: 30, text: "Darshan M S"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                    "assets/github.svg", "https://github.com/Shainworks"),
                urlLauncher("assets/twitter.svg", "https://x.com/Darshan_ms_06")
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            Tabweb(
              title: "Home",
              route: '/',
            ),
            Spacer(),
            Tabweb(
              title: "Works",
              route: '/works',
            ),
            Spacer(),
            Tabweb(
              title: "Blogs",
              route: '/blogs',
            ),
            Spacer(),
            Tabweb(
              title: "About",
              route: '/about',
            ),
            Spacer(),
            Tabweb(
              title: "Contact",
              route: '/contact',
            ),
            Spacer(),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          //First page look after landing
          Container(
            padding: EdgeInsets.symmetric(horizontal: 170),
            height: deviceheight - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: SansBold(size: 15, text: "Hello I'm"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(size: 55, text: "Darshan M S"),
                    Sans(size: 30, text: "Software Developer"),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(size: 15, text: "msdarshan033@gmail.com")
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(size: 15, text: "7975522715")
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(size: 15, text: "Karnataka,Bengaluru")
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/God.jpg"),
                      radius: 140,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //The beginning of the second part of the page
          Container(
            height: deviceheight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/web.jpg",
                  height: devicewidth / 1.9,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold(size: 40, text: "About me"),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      size: 15,
                      text:
                          "Tech enthusiast skilled in solving problems innovatively.\n"
                          "Award-winning developer excelling in web and UI.\n"
                          "Backend expert pushing creative and technical boundaries.\n"
                          "Innovative engineer specializing in full-stack development.\n",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Sans(size: 15, text: "Flutter"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Sans(size: 15, text: "React"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Sans(size: 15, text: "Express"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Sans(size: 15, text: "Firebase"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Sans(size: 15, text: "Tailwind"),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //The beginning of the third part of the page
          Container(
            height: deviceheight / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(size: 40, text: "What i do?"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shadowColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: Colors.tealAccent),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SansBold(size: 15, text: "Web Development")
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shadowColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: Colors.tealAccent),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SansBold(size: 15, text: "App Development")
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shadowColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: Colors.tealAccent),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SansBold(size: 15, text: "Back-end Development")
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //The beginning of the fourth part of the page
          Container(
            height: deviceheight,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold(size: 40, text: "Contact Me!"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Forms(
                            Heading: "First name",
                            hinttext: "Enter your First name",
                            maxline: 1,
                            width: 350,
                            controller: _firstname,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "This field is Required";
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Forms(
                            Heading: "Email",
                            hinttext: "Enter your email",
                            maxline: 1,
                            width: 350,
                            controller: _email,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "This field is Required";
                              }
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Forms(
                            Heading: "Last name",
                            hinttext: "Enter your last name",
                            maxline: 1,
                            width: 350,
                            controller: _lastname,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "This field is Required";
                              }
                            },
                          ),
                          Forms(
                            Heading: "Contact",
                            hinttext: "Enter your number",
                            maxline: 1,
                            width: 350,
                            controller: _contact,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "This field is Required";
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Forms(
                    Heading: "Message",
                    hinttext: "Enter your message",
                    maxline: 6,
                    width: devicewidth / 1.5,
                    controller: _message,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "This field is Required";
                      }
                    },
                  ),
                  MaterialButton(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 60,
                      minWidth: 300,
                      color: Colors.tealAccent,
                      child: SansBold(size: 20, text: "Submit"),
                      onPressed: () async {
                        final addData = new AddDataFirestore();
                        if (formKey.currentState!.validate()) {
                          await addData.addResponse(
                              _firstname.text,
                              _lastname.text,
                              _email.text,
                              _contact.text,
                              _message.text);
                          formKey.currentState!.reset();
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: SansBold(
                                        size: 20, text: "Message Submitted"),
                                  ));
                        }
                      }),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
