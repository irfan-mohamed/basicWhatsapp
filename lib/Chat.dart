import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String name;
  const Chat({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        leadingWidth: 30,
        title: Title(
          color: Colors.white,
          child: Row(
            children: [
              const CircleAvatar(
                radius: 21,
                backgroundColor: Color(0xFF075E54),
                backgroundImage: NetworkImage(
                    'https://bethanyhurstville.syd.catholic.edu.au/wp-content/uploads/sites/122/2021/06/Person-Icon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.videocam),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone),
              ),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text('View contact'),
                    ),
                    const PopupMenuItem(
                      child: Text('Media,links and docs'),
                    ),
                    const PopupMenuItem(
                      child: Text('Search'),
                    ),
                    const PopupMenuItem(
                      child: Text('Mute notifications'),
                    ),
                    const PopupMenuItem(
                      child: Text('Disappearing messages'),
                    ),
                    const PopupMenuItem(
                      child: Text('Wallpaper'),
                    ),
                  ];
                },
                position: PopupMenuPosition.over,
              )
            ],
          ),
        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.all(10.0),
        height: 45,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 5,
                        color: Colors.grey),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Message",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.attach_file, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.currency_rupee_rounded,
                          color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.photo_camera, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(15.0),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: const Color(0xFF128C7E),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                ),
                onLongPress: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
