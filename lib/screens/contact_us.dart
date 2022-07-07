import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contact Us!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () async {
                  String url =
                      'whatsapp://send?phone=972567850025&text=Test message';
                  // String whatsappurl =
                  //     'https://wa.me/972567850025?text=Test message';
                  await launchUrl(Uri.parse(url));
                },
                icon: const Icon(
                  Icons.whatsapp,
                  size: 50,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () async {
                  Uri uri = Uri(
                    scheme: 'tel',
                    path: '0567850025',
                  );
                  await launchUrl(uri);
                },
                icon: const Icon(
                  Icons.phone,
                  size: 50,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () async {
                  Uri uri = Uri(
                    scheme: 'sms',
                    path: '0567850025',
                  );
                  await launchUrl(uri);
                },
                icon: const Icon(
                  Icons.sms,
                  size: 50,
                  color: Colors.orange,
                )),
            IconButton(
                onPressed: () async {
                  Uri uri = Uri(
                    scheme: 'mailto',
                    path: 'mansourzaki2000@gmail.com',
                  );
                  await launchUrl(uri);
                },
                icon: const Icon(
                  Icons.mail,
                  size: 50,
                  color: Colors.red,
                )),
            IconButton(
                onPressed: () async {
                  String url = 'instagram://user?username=manss_784';

                  await launchUrl(Uri.parse(url));
                },
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 50,
                  color: Colors.purple,
                )),
          ],
        ),
      ],
    );
  }
}
