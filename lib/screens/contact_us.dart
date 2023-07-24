import 'package:flutter/material.dart';
import 'package:score_win/screens/nav_screen.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100.0,
            shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(32.0)),
            ),
            centerTitle: false,
            floating: true,
            backgroundColor: const Color(0xFF020612),
            title: Row(children: const [
              Icon(Icons.mail),
              SizedBox(width: 8.0),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontFamily: 'Elmessiri',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )
            ]),
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NavScreen()));
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    formLabel('Name'),
                    const SizedBox(height: 16.0),
                    formInput(false),
                    SizedBox(height: screenSize.height * 0.0413),
                    formLabel('Email'),
                    const SizedBox(height: 16.0),
                    formInput(false),
                    SizedBox(height: screenSize.height * 0.0413),
                    formLabel('Message'),
                    const SizedBox(height: 16.0),
                    formInput(true),
                    SizedBox(height: screenSize.height * 0.093),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Color(0xFFFF5402)),
                          minimumSize: MaterialStateProperty.resolveWith(
                              (states) => Size(screenSize.width * 0.85,
                                  screenSize.height * 0.06)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                        child: const Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Elmessiri',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  formLabel(String label) {
    return Text(
      label,
      style: const TextStyle(
        fontFamily: 'Elmessiri',
        fontSize: 16.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  formInput(bool isTextArea) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: !isTextArea
              ? BorderRadius.circular(50.0)
              : BorderRadius.circular(20.0),
          border: Border.all(width: 1.0, color: Color(0xFFACACAC))),
      height:
          !isTextArea ? screenSize.height * 0.06 : screenSize.height * 0.1225,
      child: TextFormField(
        maxLines: isTextArea ? 5 : 1,
        decoration: InputDecoration(
          focusColor: Colors.black,
          border: OutlineInputBorder(
              borderRadius: !isTextArea
                  ? BorderRadius.circular(50.0)
                  : BorderRadius.circular(20.0)),
        ),
        textAlign: !isTextArea ? TextAlign.center : TextAlign.start,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        // controller: ,
        validator: (String? value) {
          if (value!.isEmpty) {
            return "Empty value";
          }
        },
      ),
    );
  }
}
