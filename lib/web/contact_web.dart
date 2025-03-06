import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
            )
          ];
        },
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SansBold(size: 30, text: "Contact Me !"),
                SizedBox(
                  height: 20,
                ),
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
                SizedBox(
                  height: 25,
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
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
