import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/Login.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF128C7E),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            splashRadius: 40,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        leadingWidth: 50,
        title: Title(
          color: Colors.white,
          child: Text('Settings'),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: width * 1,
              height: height * 0.10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://bethanyhurstville.syd.catholic.edu.au/wp-content/uploads/sites/122/2021/06/Person-Icon.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Irfan Mohamed',
                          style: TextStyle(
                            fontSize: 23,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            '..abcdefghijklmnopqrst...',
                            style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.manage_accounts_sharp,
                size: 40,
              ),
              title: Text('Account'),
              subtitle: Text('Security notifications, change number'),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                size: 40,
              ),
              title: Text('Privacy'),
              subtitle: Text('Block contacts, disappearing messages'),
            ),
            ListTile(
              leading: Icon(
                Icons.chat,
                size: 40,
              ),
              title: Text('Chats'),
              subtitle: Text('Theme, wallpapers, chat history'),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 40,
              ),
              title: Text('Notifications'),
              subtitle: Text('Message, groupe & call tones'),
            ),
            ListTile(
              leading: Icon(
                Icons.data_saver_off,
                size: 40,
              ),
              title: Text('Storage and data'),
              subtitle: Text('Network usage, auto-download'),
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                size: 40,
              ),
              title: Text('App language'),
              subtitle: Text("English (phone's language)"),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                size: 40,
              ),
              title: Text('Help'),
              subtitle: Text('Help centre, contact us, privacy policy'),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                size: 40,
              ),
              title: Text('Invite a friend'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width * 1,
                child: Center(
                  child: Column(
                    children: [Text('from'), Text('Irfan Mohamed')],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
