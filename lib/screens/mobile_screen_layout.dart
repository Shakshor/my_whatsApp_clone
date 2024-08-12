import 'package:flutter/material.dart';
import 'package:whats_app_clone/colors.dart';
import 'package:whats_app_clone/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget{
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context){
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
              'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
            ),
          ],
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],

          ),
        ),

        body: ContactsList(),
      ),
    );
  }
}


