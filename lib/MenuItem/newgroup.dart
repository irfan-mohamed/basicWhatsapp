import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class newgroup extends StatelessWidget {
  const newgroup({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('New group'),
              SizedBox(
                height: 5,
              ),
              Text(
                'Add participants',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (cont, index) {
              return ListTile(
                title: Text('Person$index'),
                subtitle: Text('Messages are shown here...'),
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Color(0xFF075E54),
                  backgroundImage: NetworkImage(
                      'https://bethanyhurstville.syd.catholic.edu.au/wp-content/uploads/sites/122/2021/06/Person-Icon.jpg'),
                ),
              );
            },
            separatorBuilder: (cont, index) {
              return Divider();
            },
            itemCount: 30),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF075E54),
        child: Icon(
          Icons.arrow_forward_sharp,
        ),
      ),
    );
  }
}
