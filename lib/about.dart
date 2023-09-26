import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class aboutus extends StatefulWidget {
  const aboutus({super.key});

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {

  
  bool isHower = false;
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
           // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/about.jpg'),
                    opacity: 0.1,
                    fit: BoxFit.fill)),
            child: Center(
              key: Key('value'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'INDIAN TOWING \n SERVICES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.3),
                           offset: Offset(4, 4),
                              blurRadius: 8)
                        ]),   
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'Welcome to INDIAN TOWING SERVICE your trusted partner in towing and roadside assistance services across India. With a rich history spanning over [number of years] years, we have been serving our valued customers with unwavering dedication, professionalism, and a commitment to providing top-notch towing solutions.',
                      textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                    ),
                  ),SizedBox(
                    height: 20,
                  ),
                  Text(
                    'JOURNEY',
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        'Established in 2004,INDIAN TOWING SERVICE was founded on the principles of reliability, efficiency, and customer satisfaction. Over the years, we have grown from a small towing service provider into a leading name in the Indian towing industry. Our journey has been marked by continuous improvement, innovation, and a deep understanding of our customers needs.',
                        textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                      )),
                      SizedBox(height: 20,),
                      InkWell(
                            onTap: () {
                              setState(() {
                                _makePhoneCall('tel:6305702158');
                              });
                            },
                            child: MouseRegion(
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: isHower
                                        ? Color.fromARGB(255, 14, 0, 91)
                                        : Colors.white,
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: isHower
                                          ? Colors.white
                                          : Color.fromARGB(255, 14, 0, 91),
                                    )),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Contact Us',
                                        style: GoogleFonts.getFont('Poppins',
                                            color: isHower
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    255, 14, 0, 91),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              cursor: SystemMouseCursors.click,
                              onExit: (event) {
                                isHower = false;
                                setState(() {});
                              },
                              onHover: (event) {
                                isHower = true;
                                setState(() {});
                              },
                            ),
                          ),
                          SizedBox(height: 30,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
