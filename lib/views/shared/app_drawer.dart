import 'package:flutter/material.dart';
import 'package:usersmultivendor/global.dart';
import 'package:usersmultivendor/views/auth/auth_screen.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 25,
              bottom: 10,
            ),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(80),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: SizedBox(
                      width: 160,
                      height: 160,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          sharedPreferences!.getString("photoUrl")!,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  sharedPreferences!.getString("name")!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Signatra",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.only(top: 1),
            child: Column(
              children: [
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "My Orders",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.timelapse,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "History",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.gps_fixed,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Add New Address",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Sign Oup",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    firebaseAuth.signOut().then((value) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const AuthScreen(),
                        ),
                      );
                    });
                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
