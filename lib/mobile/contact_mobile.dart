import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerboxisscrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
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
                    SizedBox(
                      height: 35,
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
