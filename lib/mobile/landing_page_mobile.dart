import 'package:darshan_portfolio/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    var devicewidth = MediaQuery.of(context).size.width;
    var deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                width: 280, // Set width
                height: 280, // Set height
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                  image: DecorationImage(
                    image: AssetImage("assets/God.jpg"),
                    fit: BoxFit
                        .contain, // Ensures the image covers the circle properly
                  ),
                ),
              ),
            ),
            TabMobile(text: "Home", route: "/"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Works", route: "/works"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Blogs", route: "/blogs"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "About", route: "/about"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Contact", route: "/contact"),
            SizedBox(
              height: 40,
            ),
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
      body: ListView(
        children: [
          //First Section of the MobileApp
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 113,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/God.jpg"),
                      radius: 110,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                    Sans(size: 40, text: "Darshan M S"),
                    Sans(size: 20, text: "Software Developer"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      children: [
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
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          //Second Section of the MobileApp
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold(size: 35, text: "About me"),
                Sans(
                  size: 15,
                  text: "Tech enthusiast solving problems innovatively.",
                ),
                Sans(
                  size: 15,
                  text: "Award-winning developer excelling in UI.",
                ),
                Sans(
                  size: 15,
                  text: "Backend expert pushing technical boundaries.",
                ),
                Sans(
                  size: 15,
                  text: "Innovative full-stack development engineer.",
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
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
                      height: 60,
                    ),
                    //This is the third section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                  width: 300,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                SansBold(size: 15, text: "Web Development")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
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
                                  width: 300,
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
                        SizedBox(
                          height: 35,
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
                                  width: 300,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                SansBold(size: 15, text: "Back-end Development")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Form(
                          key: formKey,
                          child: Wrap(
                            runSpacing: 7,
                            spacing: 7,
                            runAlignment: WrapAlignment.center,
                            children: [
                              SansBold(size: 40, text: "Contact Me!"),
                              Forms(
                                Heading: "First name",
                                hinttext: "Enter your First name",
                                maxline: 1,
                                width: devicewidth / 1.4,
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
                                Heading: "Last name",
                                hinttext: "Enter your last name",
                                maxline: 1,
                                width: devicewidth / 1.4,
                                controller: _lastname,
                                validator: (text) {
                                  if (text.toString().isEmpty) {
                                    return "This field is Required";
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Forms(
                                Heading: "Email",
                                hinttext: "Enter your email",
                                maxline: 1,
                                width: devicewidth / 1.4,
                                controller: _email,
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
                                Heading: "Contact",
                                hinttext: "Enter your number",
                                maxline: 1,
                                width: devicewidth / 1.4,
                                controller: _contact,
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
                                Heading: "Message",
                                hinttext: "Enter your message",
                                maxline: 6,
                                width: devicewidth / 1.4,
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
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                title: SansBold(
                                                    size: 20,
                                                    text: "Message Submitted"),
                                              ));
                                    }
                                  }),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
