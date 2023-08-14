import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/Chat.dart';
import 'package:whatsapp/Login.dart';
import 'package:whatsapp/MenuItem/newbrodcast.dart';
import 'package:whatsapp/MenuItem/newgroup.dart';
import 'package:whatsapp/MenuItem/settings.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(onSelected: (result) {
              if (result == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newgroup()),
                );
              }
              if (result == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newbroadcast()),
                );
              }
              if (result == 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                );
              }
            }, itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'New group',
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text('New broadcast'),
                  value: 1,
                ),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Starred messages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 6,
                ),
              ];
            })
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Icon(
                  Icons.people_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          backgroundColor: Color(0xFF128C7E),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Coming Soon...'),
            ),
            SafeArea(
              child: ListView.separated(
                  itemBuilder: (cont, index) {
                    return ListTile(
                      title: Text('Person$index'),
                      subtitle: Text('Messages are shown here...'),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xFF075E54),
                        backgroundImage: NetworkImage(
                            'https://bethanyhurstville.syd.catholic.edu.au/wp-content/uploads/sites/122/2021/06/Person-Icon.jpg'),
                      ),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (ctx) {
                        //       return Chat(name: 'Person$index');
                        //     },
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Chat(name: 'Person$index')),
                        );
                      },
                      trailing: Text('11:0${index}AM'),
                    );
                  },
                  separatorBuilder: (cont, index) {
                    return Divider();
                  },
                  itemCount: 30),
            ),
            Center(
              child: Text('Coming Soon...'),
            ),
            Center(
              child: Text('Coming Soon...'),
            ),
          ],
        ),
      ),
    );
  }
}
