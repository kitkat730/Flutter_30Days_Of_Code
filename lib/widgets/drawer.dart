import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  static const ImageUrl = "https://avatars.githubusercontent.com/u/32953922?v=4";
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Hareram Shah"),
                accountEmail: const Text("1234@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              ),
            ),
            const ListTile(
                 leading: Icon(CupertinoIcons.home,
                 color: Colors.white,
                 ),
                 title: const Text("Home",
                 textScaleFactor: 1.2,
                 style:TextStyle(color: Colors.white,),
            ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,
              ),
              title: const Text("My Profile",textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            Divider(),
            const ListTile(
              leading: Icon(CupertinoIcons.speedometer,
              color: Colors.white,
              ),
              title: const Text("Events",textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.music_note_list,
              color: Colors.white,
              ),
              title: const Text("Notificatons",textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.settings,
              color: Colors.white,
              ),
              title: const Text("Settings",textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
