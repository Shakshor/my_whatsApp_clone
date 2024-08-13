import 'package:flutter/material.dart';
import 'package:whats_app_clone/widgets/contacts_list.dart';

class WebScreenLayout extends StatelessWidget{
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // web_profile_bar
                  // web_search_bar
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/backgroundImage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}