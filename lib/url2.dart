import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page extends StatelessWidget {
   Page({super.key});

   final  Uri _url = Uri.parse('https://www.versalgo.in/');


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
        style: TextButton.styleFrom(backgroundColor: Colors.yellowAccent),
         child:const Text("click me")
          ),
      ),
    );
  }
}