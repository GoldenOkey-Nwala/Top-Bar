import 'package:flutter/material.dart';
import 'package:topbar/tabs/home_tab.dart';
import 'package:topbar/tabs/profile_tab.dart';
import 'package:topbar/tabs/feed_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Top Bar'),
            // backgroundColor: Colors.blueAccent,
            leading: BackButton(
              onPressed: () {},
            ),
            // IconButton(icon: const Icon(Icons.menu),
            //   onPressed: (){},
            // ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.purple, Colors.red, Colors.white70],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )),
            ),
            bottom: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.star),
                    text: 'Feed',
                  ),
                  Tab(
                    icon: Icon(Icons.face),
                    text: 'Profile',
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: 'Settings',
                  ),
                  Tab(
                    icon: Icon(Icons.favorite_outline_rounded),
                    text: 'Favourite',
                  ),
                  Tab(
                    icon: Icon(Icons.chair_rounded),
                    text: 'Meeting',
                  ),
                  Tab(
                    icon: Icon(Icons.add_box_outlined),
                    text: 'Add Post',
                  ),
                  Tab(
                    icon: Icon(Icons.ondemand_video_rounded),
                    text: 'Videos',
                  ),
                ]),
          ),
          body: SizedBox(
            width: double.maxFinite, 
            child: TabBarView(
              children: [
                const HomeTab(),
                const FeedTab(),
                const ProfileTab(),
                Image.asset(
                  'assets/images/food.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Image.asset(
                  'assets/images/arch.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Image.asset(
                  'assets/images/fashion.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Image.asset(
                  'assets/images/animal.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Image.asset(
                  'assets/images/cards.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ],
            ),
          ),

          // This formart can be used too;
          //TabBarView(
          //   children: [
          //     buildPage('Home Page'),
          //     buildPage('Feed Page'),
          //     buildPage('Profile Page'),
          //     buildPage('Settings Page'),
          //     buildPage('Favourite Page'),
          //     buildPage('Meeting Page'),
          //     buildPage('Add Post Page'),
          //     buildPage('Video Page'),
          //   ],
          // ),

        ),
      );

// buildPage(String text) => Center(
//     child: Text(
//       text,
//       style: const TextStyle (fontSize: 28),
//     ),
//   );

}
