import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class url extends StatelessWidget {
   url({super.key});

  final  Uri _url = Uri.parse('https://shorturl.at/klnJS');


  Future<void> _launchUrl ()async{
    if (!await launchUrl(_url)){
      throw Exception("could not launch $_url");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(onPressed: ()async{
       
       _launchUrl();
        },
        style: TextButton.styleFrom(backgroundColor: Colors.pink),
         child:const Text("click me")
          ),
      ),

    );
  }
}